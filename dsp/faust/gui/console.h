/************************************************************************

	IMPORTANT NOTE : this file contains two clearly delimited sections :
	the ARCHITECTURE section (in two parts) and the USER section. Each section
	is governed by its own copyright and license. Please check individually
	each section for license and copyright information.
*************************************************************************/

/*******************BEGIN ARCHITECTURE SECTION (part 1/2)****************/

/************************************************************************
    FAUST Architecture File
	Copyright (C) 2003-2011 GRAME, Centre National de Creation Musicale
    ---------------------------------------------------------------------
    This Architecture section is free software; you can redistribute it
    and/or modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 3 of
	the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
	along with this program; If not, see <http://www.gnu.org/licenses/>.

	EXCEPTION : As a special exception, you may create a larger work
	that contains this FAUST architecture section and distribute
	that work under terms of your choice, so long as this FAUST
	architecture section is not modified.


 ************************************************************************
 ************************************************************************/
#ifndef __faustconsole__
#define __faustconsole__

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stack>
#include <string>
#include <map>
#include <vector>
#include <iostream>

#include "faust/gui/GUI.h"

using namespace std;

/******************************************************************************
*******************************************************************************

								USER INTERFACE

*******************************************************************************
*******************************************************************************/

struct param {
	FAUSTFLOAT* fZone; FAUSTFLOAT fMin; FAUSTFLOAT fMax;
	param(FAUSTFLOAT* z, FAUSTFLOAT init, FAUSTFLOAT a, FAUSTFLOAT b) : fZone(z), fMin(a), fMax(b) { *z = init; }
};

class CMDUI : public UI
{
	int					fArgc;
	char**				fArgv;
	vector<char*>		fFiles;
	stack<string>		fPrefix;
	map<string, param>	fKeyParam;

	void openAnyBox(const char* label)
	{
		string prefix;

		if (label && label[0]) {
			prefix = fPrefix.top() + "-" + label;
		} else {
			prefix = fPrefix.top();
		}
		fPrefix.push(prefix);
	}

	string simplify(const string& src)
	{
		int		i=0;
		int		level=0;
		string	dst;

		while (src[i] ) {

			switch (level) {

				case 0 :
				case 1 :
				case 2 :
					// Skip the begin of the label "--foo-"
					// until 3 '-' have been read
					if (src[i]=='-') { level++; }
					break;

				case 3 :
					// copy the content, but skip non alphnum
					// and content in parenthesis
					switch (src[i]) {
						case '(' :
						case '[' :
							level++;
							break;

						case '-' :
							dst += '-';
							break;

						default :
							if (isalnum(src[i])) {
								dst+= tolower(src[i]);
							}

					}
					break;

				default :
					// here we are inside parenthesis and
					// we skip the content until we are back to
					// level 3
					switch (src[i]) {

						case '(' :
						case '[' :
							level++;
							break;

						case ')' :
						case ']' :
							level--;
							break;

						default :
							break;
					}

			}
			i++;
		}
		return dst;
	}

public:

	CMDUI(int argc, char *argv[]) : UI(), fArgc(argc), fArgv(argv) { fPrefix.push("-"); }
	virtual ~CMDUI() {}

	void addOption(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT init, FAUSTFLOAT min, FAUSTFLOAT max)
	{
		string fullname = "-" + simplify(fPrefix.top() + "-" + label);
		fKeyParam.insert(make_pair(fullname, param(zone, init, min, max)));
	}

	virtual void addButton(const char* label, FAUSTFLOAT* zone)
	{
		addOption(label,zone,0,0,1);
	}

	virtual void addCheckButton(const char* label, FAUSTFLOAT* zone)
	{
		addOption(label,zone,0,0,1);
	}

	virtual void addVerticalSlider(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT init, FAUSTFLOAT min, FAUSTFLOAT max, FAUSTFLOAT step)
	{
		addOption(label,zone,init,min,max);
	}

	virtual void addHorizontalSlider(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT init, FAUSTFLOAT min, FAUSTFLOAT max, FAUSTFLOAT step)
	{
		addOption(label,zone,init,min,max);
	}

	virtual void addNumEntry(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT init, FAUSTFLOAT min, FAUSTFLOAT max, FAUSTFLOAT step)
	{
		addOption(label,zone,init,min,max);
	}

	// -- passive widgets

	virtual void addHorizontalBargraph(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT min, FAUSTFLOAT max) 		{}
	virtual void addVerticalBargraph(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT min, FAUSTFLOAT max) 			{}

	virtual void openTabBox(const char* label)			{ openAnyBox(label); }
	virtual void openHorizontalBox(const char* label)	{ openAnyBox(label); }
	virtual void openVerticalBox(const char* label)		{ openAnyBox(label); }

	virtual void closeBox() 							{ fPrefix.pop(); }

	virtual void show() {}
	virtual void run()
	{
		char c;
		printf("Type 'q' to quit\n");
		while ((c = getchar()) != 'q') {
			sleep(1);
		}
	}

	void printhelp_command()
	{
		map<string, param>::iterator i;
		cout << fArgc << "\n";
		cout << fArgv[0] << " option list : ";
		for (i = fKeyParam.begin(); i != fKeyParam.end(); i++) {
			cout << "[ " << i->first << " " << i->second.fMin << ".." << i->second.fMax <<" ] ";
		}
		cout << " infile outfile\n";
	}
    
    void printhelp_init()
	{
		map<string, param>::iterator i;
		cout << fArgc << "\n";
		cout << fArgv[0] << " option list : ";
		for (i = fKeyParam.begin(); i != fKeyParam.end(); i++) {
			cout << "[ " << i->first << " " << i->second.fMin << ".." << i->second.fMax <<" ] ";
		}
		cout << endl;
	}

	void process_command()
	{
		map<string, param>::iterator p;
		for (int i = 1; i < fArgc; i++) {
			if (fArgv[i][0] == '-') {
				if ((strcmp(fArgv[i], "-help") == 0)
                    || (strcmp(fArgv[i], "-h") == 0)
                    || (strcmp(fArgv[i], "--help") == 0)) 	{
					printhelp_command();
					exit(1);
				}
				p = fKeyParam.find(fArgv[i]);
				if (p == fKeyParam.end()) {
					cout << fArgv[0] << " : unrecognized option " << fArgv[i] << "\n";
					printhelp_command();
					exit(1);
				}
				char* end;
				*(p->second.fZone) = FAUSTFLOAT(strtod(fArgv[i+1], &end));
				i++;
			} else {
				fFiles.push_back(fArgv[i]);
			}
		}
	}

	int 	files()         { return fFiles.size(); }
	char* 	file (int n)	{ return fFiles[n]; }

	char* input_file ()     { cout << "input file " << fFiles[0]; return fFiles[0]; }
	char* output_file() 	{ cout << "output file " << fFiles[1]; return fFiles[1]; }

	void process_init()
	{
		map<string, param>::iterator p;
		for (int i = 1; i < fArgc; i++) {
			if (fArgv[i][0] == '-') {
                if ((strcmp(fArgv[i], "-help") == 0)
                    || (strcmp(fArgv[i], "-h") == 0)
                    || (strcmp(fArgv[i], "--help") == 0)) 	{
					printhelp_init();
					exit(1);
				}
				p = fKeyParam.find(fArgv[i]);
				if (p == fKeyParam.end()) {
					cout << fArgv[0] << " : unrecognized option " << fArgv[i] << "\n";
                    printhelp_init();
					exit(1);
				}
				char* end;
				*(p->second.fZone) = FAUSTFLOAT(strtod(fArgv[i+1], &end));
				i++;
			}
		}
	}
};

#endif

/********************END ARCHITECTURE SECTION (part 2/2)****************/