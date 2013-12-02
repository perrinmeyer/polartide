{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x86"
		}
,
		"rect" : [ 375.0, 44.0, 925.0, 583.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 606.0, 380.0, 90.0, 19.0 ],
					"text" : "o.pack /phrase/*"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 719.0, 154.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 22.0, 82.0, 140.0, 19.0 ],
									"text" : "routepass FullPacket clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 22.0, 126.0, 100.0, 19.0 ],
									"text" : "o.select /timer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 4,
											"architecture" : "x86"
										}
,
										"rect" : [ 47.0, 233.0, 1294.0, 696.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 11.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 505.0, 259.0, 405.0, 19.0 ],
													"text" : "o.expr /seg/offset[[ length(/seg/offset) - 1]] = /seg/offsetbetween"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 505.0, 206.0, 405.0, 19.0 ],
													"text" : "o.expr /seg/offsetbetween = /new/times[[0]] - /seg/times[[ length(/seg/times) - 1 ]]"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-33",
													"linecount" : 17,
													"maxclass" : "o.message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 501.0, 857.0, 216.0 ],
													"text" : "/new/midi 47 75 60 78 47 75 60 78 47 75 60 78\n/new/offset 0.1 0.1 0.1 0.780973 0.1 0.1 0.1 0.591208 0.1 0.1 0.1 0.\n/new/timetag 2013-11-24T22:57:35.543298Z\n/new/times 2013-11-24T22:57:33.871117Z 2013-11-24T22:57:33.971117Z 2013-11-24T22:57:34.071117Z 2013-11-24T22:57:34.071117Z 2013-11-24T22:57:34.852090Z 2013-11-24T22:57:34.952090Z 2013-11-24T22:57:35.052090Z 2013-11-24T22:57:35.052090Z 2013-11-24T22:57:35.643298Z 2013-11-24T22:57:35.743298Z 2013-11-24T22:57:35.843298Z 2013-11-24T22:57:35.843298Z\n/count 2\n/prev/midi 47 75 60 78 47 75 60 78\n/prev/offset 0.1 0.1 0.1 0.780973 0.1 0.1 0.1 0.\n/prev/timetag 2013-11-24T22:57:34.752090Z\n/prev/times 2013-11-24T22:57:33.871117Z 2013-11-24T22:57:33.971117Z 2013-11-24T22:57:34.071117Z 2013-11-24T22:57:34.071117Z 2013-11-24T22:57:34.852090Z 2013-11-24T22:57:34.952090Z 2013-11-24T22:57:35.052090Z 2013-11-24T22:57:35.052090Z\n/seg/times 2013-11-24T22:57:33.871117Z 2013-11-24T22:57:33.971117Z 2013-11-24T22:57:34.071117Z 2013-11-24T22:57:34.071117Z 2013-11-24T22:57:34.852090Z 2013-11-24T22:57:34.952090Z 2013-11-24T22:57:35.052090Z 2013-11-24T22:57:35.052090Z\n/seg/offsetbetween 0.591208\n/seg/midi 47 75 60 78 47 75 60 78\n/seg/offset 0.1 0.1 0.1 0.780973 0.1 0.1 0.1 0.591208\n",
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-15",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 444.0, 434.0, 221.0, 43.0 ],
													"text" : "o.expr /new/midi =[ /prev/midi\\, /new/midi ]\\; /new/times = [ /prev/times\\, /new/times]\\; /new/offset =[ /prev/offset\\, /new/offset ]"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-13",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 40.0, 434.0, 382.0, 43.0 ],
													"text" : "o.expr /new/midi =[ /prev/midi[[ /idx/pre]]\\, /new/midi\\, /prev/midi[[ /idx/post]] ]\\; /new/times =[ /prev/times[[ /idx/pre]]\\, /new/times\\, /prev/times[[ /idx/post]] ]\\; /new/offset =[ /prev/offset[[ /idx/pre]]\\, /new/offset\\, /prev/offset[[ /idx/post]] ]\\;"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 40.0, 395.0, 423.0, 19.0 ],
													"text" : "o.cond bound(/idx/post)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"frgb" : 0.0,
													"id" : "obj-3",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 70.0, 253.0, 150.0, 31.0 ],
													"text" : "iterate list and insert bell at the correct time"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 40.0, 352.0, 576.0, 31.0 ],
													"text" : "o.expr map( lambda(t\\,i){ if( /new/times[[0]] > t\\, if( bound(/idx/pre)\\, /idx/pre = [/idx/pre\\, i]\\, /idx/pre = i)\\, if( bound(/idx/post)\\, /idx/post = [/idx/post\\, i]\\, /idx/post = i) )\\; }\\, /prev/times\\, aseq(0\\, length(/prev/times) - 1) )"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 40.0, 154.0, 169.0, 19.0 ],
													"text" : "o.cond bound(/new/bellPhrTime)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 505.0, 286.0, 579.0, 19.0 ],
													"text" : "o.expr /new/midi = [/seg/midi\\, /new/midi]\\; /new/times = [/seg/times\\, /new/times]\\; /new/offset = [/seg/offset\\, /new/offset]"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 505.0, 181.0, 649.5, 19.0 ],
													"text" : "o.cond bound(/seg/times)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 505.0, 225.0, 602.0, 19.0 ],
													"text" : "o.expr /seg/midi = /prev/midi[[ aseq(0\\, length(/seg/times) - 1) ]]\\; /seg/offset = /prev/offset[[ aseq(0\\, length(/seg/times) - 1) ]]"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 378.0, 92.0, 827.0, 19.0 ],
													"text" : "o.cond bound(/prev/times)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 505.0, 154.0, 626.0, 19.0 ],
													"text" : "o.expr map( lambda(t){ if( /new/times[[0]] > t\\, if( bound(/seg/times)\\, /seg/times = [/seg/times\\, t]\\, /seg/times = t) )\\; } \\, /prev/times )"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-27",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 378.0, 31.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-37",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1186.0, 558.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-11", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-36", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-42", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 77.0, 218.5, 83.0, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 11.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 11.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p make phrase"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 188.0, 328.5, 137.0, 19.0 ],
									"text" : "o.expr /new/offset += 0.07"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 106.0, 191.5, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 4,
											"architecture" : "x86"
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 11.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 130.0, 86.0, 19.0 ],
													"text" : "o.prepend /prev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 71.0, 19.0 ],
													"text" : "o.route /new"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-8",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-14",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 209.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 77.0, 328.5, 80.0, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 11.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 11.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p rename/new"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 77.0, 298.5, 130.0, 19.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 188.0, 357.5, 373.0, 19.0 ],
									"text" : "o.expr assign( quote(/phrase/) + /count\\, interleave(/new/midi\\, /new/offset) )"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 77.0, 163.5, 47.0, 19.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-51",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 22.0, 33.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-53",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 431.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 86.5, 378.5, 52.0, 378.5, 52.0, 156.5, 114.5, 156.5 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-63", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 333.5, 339.5, 112.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p add-new-to-phrase"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 392.0, 99.0, 1265.0, 844.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 277.5, 274.5, 247.0, 19.0 ],
									"text" : "o.expr /times = cumsum( /offset ) + /timetag"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 730.0, 216.5, 358.0, 17.0 ],
									"text" : "0 0.244141 0.073115 0.693359 0.584824 0.792969 0.763962 0.611328"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-27",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 87.5, 667.5, 114.5, 43.0 ],
									"text" : "o.expr /midi = scale(/pitch\\, 0\\, 511\\, 30.\\, 48.)"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 512,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 47, 75, 47, 75 ]
											}
, 											{
												"key" : 1,
												"value" : [ 47, 75, 50, 75 ]
											}
, 											{
												"key" : 2,
												"value" : [ 47, 75, 52, 76 ]
											}
, 											{
												"key" : 3,
												"value" : [ 47, 75, 55, 77 ]
											}
, 											{
												"key" : 4,
												"value" : [ 47, 75, 57, 77 ]
											}
, 											{
												"key" : 5,
												"value" : [ 47, 75, 58, 78 ]
											}
, 											{
												"key" : 6,
												"value" : [ 47, 75, 60, 78 ]
											}
, 											{
												"key" : 7,
												"value" : [ 47, 75, 61, 79 ]
											}
, 											{
												"key" : 8,
												"value" : [ 47, 75, 63, 79 ]
											}
, 											{
												"key" : 9,
												"value" : [ 47, 75, 64, 80 ]
											}
, 											{
												"key" : 10,
												"value" : [ 47, 75, 65, 80 ]
											}
, 											{
												"key" : 11,
												"value" : [ 47, 75, 66, 81 ]
											}
, 											{
												"key" : 12,
												"value" : [ 47, 75, 67, 81 ]
											}
, 											{
												"key" : 13,
												"value" : [ 47, 75, 68, 82 ]
											}
, 											{
												"key" : 14,
												"value" : [ 47, 75, 69, 82 ]
											}
, 											{
												"key" : 15,
												"value" : [ 47, 75, 70, 82 ]
											}
, 											{
												"key" : 16,
												"value" : [ 47, 75, 71, 83 ]
											}
, 											{
												"key" : 17,
												"value" : [ 47, 75, 72, 83 ]
											}
, 											{
												"key" : 18,
												"value" : [ 47, 75, 72, 84 ]
											}
, 											{
												"key" : 19,
												"value" : [ 47, 75, 73, 84 ]
											}
, 											{
												"key" : 20,
												"value" : [ 47, 75, 74, 84 ]
											}
, 											{
												"key" : 21,
												"value" : [ 47, 75, 74, 85 ]
											}
, 											{
												"key" : 22,
												"value" : [ 47, 75, 75, 85 ]
											}
, 											{
												"key" : 23,
												"value" : [ 47, 75, 76, 85 ]
											}
, 											{
												"key" : 24,
												"value" : [ 47, 75, 76, 86 ]
											}
, 											{
												"key" : 25,
												"value" : [ 47, 75, 47, 75 ]
											}
, 											{
												"key" : 26,
												"value" : [ 47, 75, 50, 75 ]
											}
, 											{
												"key" : 27,
												"value" : [ 47, 75, 52, 76 ]
											}
, 											{
												"key" : 28,
												"value" : [ 47, 75, 55, 77 ]
											}
, 											{
												"key" : 29,
												"value" : [ 47, 75, 57, 77 ]
											}
, 											{
												"key" : 30,
												"value" : [ 47, 75, 58, 78 ]
											}
, 											{
												"key" : 31,
												"value" : [ 47, 75, 60, 78 ]
											}
, 											{
												"key" : 32,
												"value" : [ 57, 77, 61, 79 ]
											}
, 											{
												"key" : 33,
												"value" : [ 57, 77, 63, 79 ]
											}
, 											{
												"key" : 34,
												"value" : [ 57, 77, 64, 80 ]
											}
, 											{
												"key" : 35,
												"value" : [ 57, 77, 65, 80 ]
											}
, 											{
												"key" : 36,
												"value" : [ 57, 77, 66, 81 ]
											}
, 											{
												"key" : 37,
												"value" : [ 57, 77, 67, 81 ]
											}
, 											{
												"key" : 38,
												"value" : [ 57, 77, 68, 82 ]
											}
, 											{
												"key" : 39,
												"value" : [ 57, 77, 69, 82 ]
											}
, 											{
												"key" : 40,
												"value" : [ 57, 77, 70, 82 ]
											}
, 											{
												"key" : 41,
												"value" : [ 57, 77, 71, 83 ]
											}
, 											{
												"key" : 42,
												"value" : [ 57, 77, 72, 83 ]
											}
, 											{
												"key" : 43,
												"value" : [ 57, 77, 72, 84 ]
											}
, 											{
												"key" : 44,
												"value" : [ 57, 77, 73, 84 ]
											}
, 											{
												"key" : 45,
												"value" : [ 57, 77, 74, 84 ]
											}
, 											{
												"key" : 46,
												"value" : [ 57, 77, 74, 85 ]
											}
, 											{
												"key" : 47,
												"value" : [ 57, 77, 75, 85 ]
											}
, 											{
												"key" : 48,
												"value" : [ 57, 77, 76, 85 ]
											}
, 											{
												"key" : 49,
												"value" : [ 57, 77, 76, 86 ]
											}
, 											{
												"key" : 50,
												"value" : [ 57, 77, 47, 75 ]
											}
, 											{
												"key" : 51,
												"value" : [ 57, 77, 50, 75 ]
											}
, 											{
												"key" : 52,
												"value" : [ 57, 77, 52, 76 ]
											}
, 											{
												"key" : 53,
												"value" : [ 57, 77, 55, 77 ]
											}
, 											{
												"key" : 54,
												"value" : [ 57, 77, 57, 77 ]
											}
, 											{
												"key" : 55,
												"value" : [ 57, 77, 58, 78 ]
											}
, 											{
												"key" : 56,
												"value" : [ 57, 77, 60, 78 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57, 77, 61, 79 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57, 77, 63, 79 ]
											}
, 											{
												"key" : 59,
												"value" : [ 57, 77, 64, 80 ]
											}
, 											{
												"key" : 60,
												"value" : [ 57, 77, 65, 80 ]
											}
, 											{
												"key" : 61,
												"value" : [ 57, 77, 66, 81 ]
											}
, 											{
												"key" : 62,
												"value" : [ 57, 77, 67, 81 ]
											}
, 											{
												"key" : 63,
												"value" : [ 57, 77, 68, 82 ]
											}
, 											{
												"key" : 64,
												"value" : [ 63, 79, 69, 82 ]
											}
, 											{
												"key" : 65,
												"value" : [ 63, 79, 70, 82 ]
											}
, 											{
												"key" : 66,
												"value" : [ 63, 79, 71, 83 ]
											}
, 											{
												"key" : 67,
												"value" : [ 63, 79, 72, 83 ]
											}
, 											{
												"key" : 68,
												"value" : [ 63, 79, 72, 84 ]
											}
, 											{
												"key" : 69,
												"value" : [ 63, 79, 73, 84 ]
											}
, 											{
												"key" : 70,
												"value" : [ 63, 79, 74, 84 ]
											}
, 											{
												"key" : 71,
												"value" : [ 63, 79, 74, 85 ]
											}
, 											{
												"key" : 72,
												"value" : [ 63, 79, 75, 85 ]
											}
, 											{
												"key" : 73,
												"value" : [ 63, 79, 76, 85 ]
											}
, 											{
												"key" : 74,
												"value" : [ 63, 79, 76, 86 ]
											}
, 											{
												"key" : 75,
												"value" : [ 63, 79, 47, 75 ]
											}
, 											{
												"key" : 76,
												"value" : [ 63, 79, 50, 75 ]
											}
, 											{
												"key" : 77,
												"value" : [ 63, 79, 52, 76 ]
											}
, 											{
												"key" : 78,
												"value" : [ 63, 79, 55, 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 63, 79, 57, 77 ]
											}
, 											{
												"key" : 80,
												"value" : [ 63, 79, 58, 78 ]
											}
, 											{
												"key" : 81,
												"value" : [ 63, 79, 60, 78 ]
											}
, 											{
												"key" : 82,
												"value" : [ 63, 79, 61, 79 ]
											}
, 											{
												"key" : 83,
												"value" : [ 63, 79, 63, 79 ]
											}
, 											{
												"key" : 84,
												"value" : [ 63, 79, 64, 80 ]
											}
, 											{
												"key" : 85,
												"value" : [ 63, 79, 65, 80 ]
											}
, 											{
												"key" : 86,
												"value" : [ 63, 79, 66, 81 ]
											}
, 											{
												"key" : 87,
												"value" : [ 63, 79, 67, 81 ]
											}
, 											{
												"key" : 88,
												"value" : [ 63, 79, 68, 82 ]
											}
, 											{
												"key" : 89,
												"value" : [ 63, 79, 69, 82 ]
											}
, 											{
												"key" : 90,
												"value" : [ 63, 79, 70, 82 ]
											}
, 											{
												"key" : 91,
												"value" : [ 63, 79, 71, 83 ]
											}
, 											{
												"key" : 92,
												"value" : [ 63, 79, 72, 83 ]
											}
, 											{
												"key" : 93,
												"value" : [ 63, 79, 72, 84 ]
											}
, 											{
												"key" : 94,
												"value" : [ 63, 79, 73, 84 ]
											}
, 											{
												"key" : 95,
												"value" : [ 63, 79, 74, 84 ]
											}
, 											{
												"key" : 96,
												"value" : [ 67, 81, 74, 85 ]
											}
, 											{
												"key" : 97,
												"value" : [ 67, 81, 75, 85 ]
											}
, 											{
												"key" : 98,
												"value" : [ 67, 81, 76, 85 ]
											}
, 											{
												"key" : 99,
												"value" : [ 67, 81, 76, 86 ]
											}
, 											{
												"key" : 100,
												"value" : [ 67, 81, 47, 75 ]
											}
, 											{
												"key" : 101,
												"value" : [ 67, 81, 50, 75 ]
											}
, 											{
												"key" : 102,
												"value" : [ 67, 81, 52, 76 ]
											}
, 											{
												"key" : 103,
												"value" : [ 67, 81, 55, 77 ]
											}
, 											{
												"key" : 104,
												"value" : [ 67, 81, 57, 77 ]
											}
, 											{
												"key" : 105,
												"value" : [ 67, 81, 58, 78 ]
											}
, 											{
												"key" : 106,
												"value" : [ 67, 81, 60, 78 ]
											}
, 											{
												"key" : 107,
												"value" : [ 67, 81, 61, 79 ]
											}
, 											{
												"key" : 108,
												"value" : [ 67, 81, 63, 79 ]
											}
, 											{
												"key" : 109,
												"value" : [ 67, 81, 64, 80 ]
											}
, 											{
												"key" : 110,
												"value" : [ 67, 81, 65, 80 ]
											}
, 											{
												"key" : 111,
												"value" : [ 67, 81, 66, 81 ]
											}
, 											{
												"key" : 112,
												"value" : [ 67, 81, 67, 81 ]
											}
, 											{
												"key" : 113,
												"value" : [ 67, 81, 68, 82 ]
											}
, 											{
												"key" : 114,
												"value" : [ 67, 81, 69, 82 ]
											}
, 											{
												"key" : 115,
												"value" : [ 67, 81, 70, 82 ]
											}
, 											{
												"key" : 116,
												"value" : [ 67, 81, 71, 83 ]
											}
, 											{
												"key" : 117,
												"value" : [ 67, 81, 72, 83 ]
											}
, 											{
												"key" : 118,
												"value" : [ 67, 81, 72, 84 ]
											}
, 											{
												"key" : 119,
												"value" : [ 67, 81, 73, 84 ]
											}
, 											{
												"key" : 120,
												"value" : [ 67, 81, 74, 84 ]
											}
, 											{
												"key" : 121,
												"value" : [ 67, 81, 74, 85 ]
											}
, 											{
												"key" : 122,
												"value" : [ 67, 81, 75, 85 ]
											}
, 											{
												"key" : 123,
												"value" : [ 67, 81, 76, 85 ]
											}
, 											{
												"key" : 124,
												"value" : [ 67, 81, 76, 86 ]
											}
, 											{
												"key" : 125,
												"value" : [ 67, 81, 47, 75 ]
											}
, 											{
												"key" : 126,
												"value" : [ 67, 81, 50, 75 ]
											}
, 											{
												"key" : 127,
												"value" : [ 67, 81, 52, 76 ]
											}
, 											{
												"key" : 128,
												"value" : [ 71, 83, 55, 77 ]
											}
, 											{
												"key" : 129,
												"value" : [ 71, 83, 57, 77 ]
											}
, 											{
												"key" : 130,
												"value" : [ 71, 83, 58, 78 ]
											}
, 											{
												"key" : 131,
												"value" : [ 71, 83, 60, 78 ]
											}
, 											{
												"key" : 132,
												"value" : [ 71, 83, 61, 79 ]
											}
, 											{
												"key" : 133,
												"value" : [ 71, 83, 63, 79 ]
											}
, 											{
												"key" : 134,
												"value" : [ 71, 83, 64, 80 ]
											}
, 											{
												"key" : 135,
												"value" : [ 71, 83, 65, 80 ]
											}
, 											{
												"key" : 136,
												"value" : [ 71, 83, 66, 81 ]
											}
, 											{
												"key" : 137,
												"value" : [ 71, 83, 67, 81 ]
											}
, 											{
												"key" : 138,
												"value" : [ 71, 83, 68, 82 ]
											}
, 											{
												"key" : 139,
												"value" : [ 71, 83, 69, 82 ]
											}
, 											{
												"key" : 140,
												"value" : [ 71, 83, 70, 82 ]
											}
, 											{
												"key" : 141,
												"value" : [ 71, 83, 71, 83 ]
											}
, 											{
												"key" : 142,
												"value" : [ 71, 83, 72, 83 ]
											}
, 											{
												"key" : 143,
												"value" : [ 71, 83, 72, 84 ]
											}
, 											{
												"key" : 144,
												"value" : [ 71, 83, 73, 84 ]
											}
, 											{
												"key" : 145,
												"value" : [ 71, 83, 74, 84 ]
											}
, 											{
												"key" : 146,
												"value" : [ 71, 83, 74, 85 ]
											}
, 											{
												"key" : 147,
												"value" : [ 71, 83, 75, 85 ]
											}
, 											{
												"key" : 148,
												"value" : [ 71, 83, 76, 85 ]
											}
, 											{
												"key" : 149,
												"value" : [ 71, 83, 76, 86 ]
											}
, 											{
												"key" : 150,
												"value" : [ 71, 83, 47, 75 ]
											}
, 											{
												"key" : 151,
												"value" : [ 71, 83, 50, 75 ]
											}
, 											{
												"key" : 152,
												"value" : [ 71, 83, 52, 76 ]
											}
, 											{
												"key" : 153,
												"value" : [ 71, 83, 55, 77 ]
											}
, 											{
												"key" : 154,
												"value" : [ 71, 83, 57, 77 ]
											}
, 											{
												"key" : 155,
												"value" : [ 71, 83, 58, 78 ]
											}
, 											{
												"key" : 156,
												"value" : [ 71, 83, 60, 78 ]
											}
, 											{
												"key" : 157,
												"value" : [ 71, 83, 61, 79 ]
											}
, 											{
												"key" : 158,
												"value" : [ 71, 83, 63, 79 ]
											}
, 											{
												"key" : 159,
												"value" : [ 71, 83, 64, 80 ]
											}
, 											{
												"key" : 160,
												"value" : [ 74, 84, 65, 80 ]
											}
, 											{
												"key" : 161,
												"value" : [ 74, 84, 66, 81 ]
											}
, 											{
												"key" : 162,
												"value" : [ 74, 84, 67, 81 ]
											}
, 											{
												"key" : 163,
												"value" : [ 74, 84, 68, 82 ]
											}
, 											{
												"key" : 164,
												"value" : [ 74, 84, 69, 82 ]
											}
, 											{
												"key" : 165,
												"value" : [ 74, 84, 70, 82 ]
											}
, 											{
												"key" : 166,
												"value" : [ 74, 84, 71, 83 ]
											}
, 											{
												"key" : 167,
												"value" : [ 74, 84, 72, 83 ]
											}
, 											{
												"key" : 168,
												"value" : [ 74, 84, 72, 84 ]
											}
, 											{
												"key" : 169,
												"value" : [ 74, 84, 73, 84 ]
											}
, 											{
												"key" : 170,
												"value" : [ 74, 84, 74, 84 ]
											}
, 											{
												"key" : 171,
												"value" : [ 74, 84, 74, 85 ]
											}
, 											{
												"key" : 172,
												"value" : [ 74, 84, 75, 85 ]
											}
, 											{
												"key" : 173,
												"value" : [ 74, 84, 76, 85 ]
											}
, 											{
												"key" : 174,
												"value" : [ 74, 84, 76, 86 ]
											}
, 											{
												"key" : 175,
												"value" : [ 74, 84, 47, 75 ]
											}
, 											{
												"key" : 176,
												"value" : [ 74, 84, 50, 75 ]
											}
, 											{
												"key" : 177,
												"value" : [ 74, 84, 52, 76 ]
											}
, 											{
												"key" : 178,
												"value" : [ 74, 84, 55, 77 ]
											}
, 											{
												"key" : 179,
												"value" : [ 74, 84, 57, 77 ]
											}
, 											{
												"key" : 180,
												"value" : [ 74, 84, 58, 78 ]
											}
, 											{
												"key" : 181,
												"value" : [ 74, 84, 60, 78 ]
											}
, 											{
												"key" : 182,
												"value" : [ 74, 84, 61, 79 ]
											}
, 											{
												"key" : 183,
												"value" : [ 74, 84, 63, 79 ]
											}
, 											{
												"key" : 184,
												"value" : [ 74, 84, 64, 80 ]
											}
, 											{
												"key" : 185,
												"value" : [ 74, 84, 65, 80 ]
											}
, 											{
												"key" : 186,
												"value" : [ 74, 84, 66, 81 ]
											}
, 											{
												"key" : 187,
												"value" : [ 74, 84, 67, 81 ]
											}
, 											{
												"key" : 188,
												"value" : [ 74, 84, 68, 82 ]
											}
, 											{
												"key" : 189,
												"value" : [ 74, 84, 69, 82 ]
											}
, 											{
												"key" : 190,
												"value" : [ 74, 84, 70, 82 ]
											}
, 											{
												"key" : 191,
												"value" : [ 74, 84, 71, 83 ]
											}
, 											{
												"key" : 192,
												"value" : [ 76, 86, 72, 83 ]
											}
, 											{
												"key" : 193,
												"value" : [ 76, 86, 72, 84 ]
											}
, 											{
												"key" : 194,
												"value" : [ 76, 86, 73, 84 ]
											}
, 											{
												"key" : 195,
												"value" : [ 76, 86, 74, 84 ]
											}
, 											{
												"key" : 196,
												"value" : [ 76, 86, 74, 85 ]
											}
, 											{
												"key" : 197,
												"value" : [ 76, 86, 75, 85 ]
											}
, 											{
												"key" : 198,
												"value" : [ 76, 86, 76, 85 ]
											}
, 											{
												"key" : 199,
												"value" : [ 76, 86, 76, 86 ]
											}
, 											{
												"key" : 200,
												"value" : [ 76, 86, 47, 75 ]
											}
, 											{
												"key" : 201,
												"value" : [ 76, 86, 50, 75 ]
											}
, 											{
												"key" : 202,
												"value" : [ 76, 86, 52, 76 ]
											}
, 											{
												"key" : 203,
												"value" : [ 76, 86, 55, 77 ]
											}
, 											{
												"key" : 204,
												"value" : [ 76, 86, 57, 77 ]
											}
, 											{
												"key" : 205,
												"value" : [ 76, 86, 58, 78 ]
											}
, 											{
												"key" : 206,
												"value" : [ 76, 86, 60, 78 ]
											}
, 											{
												"key" : 207,
												"value" : [ 76, 86, 61, 79 ]
											}
, 											{
												"key" : 208,
												"value" : [ 76, 86, 63, 79 ]
											}
, 											{
												"key" : 209,
												"value" : [ 76, 86, 64, 80 ]
											}
, 											{
												"key" : 210,
												"value" : [ 76, 86, 65, 80 ]
											}
, 											{
												"key" : 211,
												"value" : [ 76, 86, 66, 81 ]
											}
, 											{
												"key" : 212,
												"value" : [ 76, 86, 67, 81 ]
											}
, 											{
												"key" : 213,
												"value" : [ 76, 86, 68, 82 ]
											}
, 											{
												"key" : 214,
												"value" : [ 76, 86, 69, 82 ]
											}
, 											{
												"key" : 215,
												"value" : [ 76, 86, 70, 82 ]
											}
, 											{
												"key" : 216,
												"value" : [ 76, 86, 71, 83 ]
											}
, 											{
												"key" : 217,
												"value" : [ 76, 86, 72, 83 ]
											}
, 											{
												"key" : 218,
												"value" : [ 76, 86, 72, 84 ]
											}
, 											{
												"key" : 219,
												"value" : [ 76, 86, 73, 84 ]
											}
, 											{
												"key" : 220,
												"value" : [ 76, 86, 74, 84 ]
											}
, 											{
												"key" : 221,
												"value" : [ 76, 86, 74, 85 ]
											}
, 											{
												"key" : 222,
												"value" : [ 76, 86, 75, 85 ]
											}
, 											{
												"key" : 223,
												"value" : [ 76, 86, 76, 85 ]
											}
, 											{
												"key" : 224,
												"value" : [ 78, 87, 76, 86 ]
											}
, 											{
												"key" : 225,
												"value" : [ 78, 87, 47, 75 ]
											}
, 											{
												"key" : 226,
												"value" : [ 78, 87, 50, 75 ]
											}
, 											{
												"key" : 227,
												"value" : [ 78, 87, 52, 76 ]
											}
, 											{
												"key" : 228,
												"value" : [ 78, 87, 55, 77 ]
											}
, 											{
												"key" : 229,
												"value" : [ 78, 87, 57, 77 ]
											}
, 											{
												"key" : 230,
												"value" : [ 78, 87, 58, 78 ]
											}
, 											{
												"key" : 231,
												"value" : [ 78, 87, 60, 78 ]
											}
, 											{
												"key" : 232,
												"value" : [ 78, 87, 61, 79 ]
											}
, 											{
												"key" : 233,
												"value" : [ 78, 87, 63, 79 ]
											}
, 											{
												"key" : 234,
												"value" : [ 78, 87, 64, 80 ]
											}
, 											{
												"key" : 235,
												"value" : [ 78, 87, 65, 80 ]
											}
, 											{
												"key" : 236,
												"value" : [ 78, 87, 66, 81 ]
											}
, 											{
												"key" : 237,
												"value" : [ 78, 87, 67, 81 ]
											}
, 											{
												"key" : 238,
												"value" : [ 78, 87, 68, 82 ]
											}
, 											{
												"key" : 239,
												"value" : [ 78, 87, 69, 82 ]
											}
, 											{
												"key" : 240,
												"value" : [ 78, 87, 70, 82 ]
											}
, 											{
												"key" : 241,
												"value" : [ 78, 87, 71, 83 ]
											}
, 											{
												"key" : 242,
												"value" : [ 78, 87, 72, 83 ]
											}
, 											{
												"key" : 243,
												"value" : [ 78, 87, 72, 84 ]
											}
, 											{
												"key" : 244,
												"value" : [ 78, 87, 73, 84 ]
											}
, 											{
												"key" : 245,
												"value" : [ 78, 87, 74, 84 ]
											}
, 											{
												"key" : 246,
												"value" : [ 78, 87, 74, 85 ]
											}
, 											{
												"key" : 247,
												"value" : [ 78, 87, 75, 85 ]
											}
, 											{
												"key" : 248,
												"value" : [ 78, 87, 76, 85 ]
											}
, 											{
												"key" : 249,
												"value" : [ 78, 87, 76, 86 ]
											}
, 											{
												"key" : 250,
												"value" : [ 78, 87, 47, 75 ]
											}
, 											{
												"key" : 251,
												"value" : [ 78, 87, 50, 75 ]
											}
, 											{
												"key" : 252,
												"value" : [ 78, 87, 52, 76 ]
											}
, 											{
												"key" : 253,
												"value" : [ 78, 87, 55, 77 ]
											}
, 											{
												"key" : 254,
												"value" : [ 78, 87, 57, 77 ]
											}
, 											{
												"key" : 255,
												"value" : [ 78, 87, 58, 78 ]
											}
, 											{
												"key" : 256,
												"value" : [ 80, 88, 60, 78 ]
											}
, 											{
												"key" : 257,
												"value" : [ 80, 88, 61, 79 ]
											}
, 											{
												"key" : 258,
												"value" : [ 80, 88, 63, 79 ]
											}
, 											{
												"key" : 259,
												"value" : [ 80, 88, 64, 80 ]
											}
, 											{
												"key" : 260,
												"value" : [ 80, 88, 65, 80 ]
											}
, 											{
												"key" : 261,
												"value" : [ 80, 88, 66, 81 ]
											}
, 											{
												"key" : 262,
												"value" : [ 80, 88, 67, 81 ]
											}
, 											{
												"key" : 263,
												"value" : [ 80, 88, 68, 82 ]
											}
, 											{
												"key" : 264,
												"value" : [ 80, 88, 69, 82 ]
											}
, 											{
												"key" : 265,
												"value" : [ 80, 88, 70, 82 ]
											}
, 											{
												"key" : 266,
												"value" : [ 80, 88, 71, 83 ]
											}
, 											{
												"key" : 267,
												"value" : [ 80, 88, 72, 83 ]
											}
, 											{
												"key" : 268,
												"value" : [ 80, 88, 72, 84 ]
											}
, 											{
												"key" : 269,
												"value" : [ 80, 88, 73, 84 ]
											}
, 											{
												"key" : 270,
												"value" : [ 80, 88, 74, 84 ]
											}
, 											{
												"key" : 271,
												"value" : [ 80, 88, 74, 85 ]
											}
, 											{
												"key" : 272,
												"value" : [ 80, 88, 75, 85 ]
											}
, 											{
												"key" : 273,
												"value" : [ 80, 88, 76, 85 ]
											}
, 											{
												"key" : 274,
												"value" : [ 80, 88, 76, 86 ]
											}
, 											{
												"key" : 275,
												"value" : [ 80, 88, 47, 75 ]
											}
, 											{
												"key" : 276,
												"value" : [ 80, 88, 50, 75 ]
											}
, 											{
												"key" : 277,
												"value" : [ 80, 88, 52, 76 ]
											}
, 											{
												"key" : 278,
												"value" : [ 80, 88, 55, 77 ]
											}
, 											{
												"key" : 279,
												"value" : [ 80, 88, 57, 77 ]
											}
, 											{
												"key" : 280,
												"value" : [ 80, 88, 58, 78 ]
											}
, 											{
												"key" : 281,
												"value" : [ 80, 88, 60, 78 ]
											}
, 											{
												"key" : 282,
												"value" : [ 80, 88, 61, 79 ]
											}
, 											{
												"key" : 283,
												"value" : [ 80, 88, 63, 79 ]
											}
, 											{
												"key" : 284,
												"value" : [ 80, 88, 64, 80 ]
											}
, 											{
												"key" : 285,
												"value" : [ 80, 88, 65, 80 ]
											}
, 											{
												"key" : 286,
												"value" : [ 80, 88, 66, 81 ]
											}
, 											{
												"key" : 287,
												"value" : [ 80, 88, 67, 81 ]
											}
, 											{
												"key" : 288,
												"value" : [ 82, 89, 68, 82 ]
											}
, 											{
												"key" : 289,
												"value" : [ 82, 89, 69, 82 ]
											}
, 											{
												"key" : 290,
												"value" : [ 82, 89, 70, 82 ]
											}
, 											{
												"key" : 291,
												"value" : [ 82, 89, 71, 83 ]
											}
, 											{
												"key" : 292,
												"value" : [ 82, 89, 72, 83 ]
											}
, 											{
												"key" : 293,
												"value" : [ 82, 89, 72, 84 ]
											}
, 											{
												"key" : 294,
												"value" : [ 82, 89, 73, 84 ]
											}
, 											{
												"key" : 295,
												"value" : [ 82, 89, 74, 84 ]
											}
, 											{
												"key" : 296,
												"value" : [ 82, 89, 74, 85 ]
											}
, 											{
												"key" : 297,
												"value" : [ 82, 89, 75, 85 ]
											}
, 											{
												"key" : 298,
												"value" : [ 82, 89, 76, 85 ]
											}
, 											{
												"key" : 299,
												"value" : [ 82, 89, 76, 86 ]
											}
, 											{
												"key" : 300,
												"value" : [ 82, 89, 47, 75 ]
											}
, 											{
												"key" : 301,
												"value" : [ 82, 89, 50, 75 ]
											}
, 											{
												"key" : 302,
												"value" : [ 82, 89, 52, 76 ]
											}
, 											{
												"key" : 303,
												"value" : [ 82, 89, 55, 77 ]
											}
, 											{
												"key" : 304,
												"value" : [ 82, 89, 57, 77 ]
											}
, 											{
												"key" : 305,
												"value" : [ 82, 89, 58, 78 ]
											}
, 											{
												"key" : 306,
												"value" : [ 82, 89, 60, 78 ]
											}
, 											{
												"key" : 307,
												"value" : [ 82, 89, 61, 79 ]
											}
, 											{
												"key" : 308,
												"value" : [ 82, 89, 63, 79 ]
											}
, 											{
												"key" : 309,
												"value" : [ 82, 89, 64, 80 ]
											}
, 											{
												"key" : 310,
												"value" : [ 82, 89, 65, 80 ]
											}
, 											{
												"key" : 311,
												"value" : [ 82, 89, 66, 81 ]
											}
, 											{
												"key" : 312,
												"value" : [ 82, 89, 67, 81 ]
											}
, 											{
												"key" : 313,
												"value" : [ 82, 89, 68, 82 ]
											}
, 											{
												"key" : 314,
												"value" : [ 82, 89, 69, 82 ]
											}
, 											{
												"key" : 315,
												"value" : [ 82, 89, 70, 82 ]
											}
, 											{
												"key" : 316,
												"value" : [ 82, 89, 71, 83 ]
											}
, 											{
												"key" : 317,
												"value" : [ 82, 89, 72, 83 ]
											}
, 											{
												"key" : 318,
												"value" : [ 82, 89, 72, 84 ]
											}
, 											{
												"key" : 319,
												"value" : [ 82, 89, 73, 84 ]
											}
, 											{
												"key" : 320,
												"value" : [ 84, 91, 74, 84 ]
											}
, 											{
												"key" : 321,
												"value" : [ 84, 91, 74, 85 ]
											}
, 											{
												"key" : 322,
												"value" : [ 84, 91, 75, 85 ]
											}
, 											{
												"key" : 323,
												"value" : [ 84, 91, 76, 85 ]
											}
, 											{
												"key" : 324,
												"value" : [ 84, 91, 76, 86 ]
											}
, 											{
												"key" : 325,
												"value" : [ 84, 91, 47, 75 ]
											}
, 											{
												"key" : 326,
												"value" : [ 84, 91, 50, 75 ]
											}
, 											{
												"key" : 327,
												"value" : [ 84, 91, 52, 76 ]
											}
, 											{
												"key" : 328,
												"value" : [ 84, 91, 55, 77 ]
											}
, 											{
												"key" : 329,
												"value" : [ 84, 91, 57, 77 ]
											}
, 											{
												"key" : 330,
												"value" : [ 84, 91, 58, 78 ]
											}
, 											{
												"key" : 331,
												"value" : [ 84, 91, 60, 78 ]
											}
, 											{
												"key" : 332,
												"value" : [ 84, 91, 61, 79 ]
											}
, 											{
												"key" : 333,
												"value" : [ 84, 91, 63, 79 ]
											}
, 											{
												"key" : 334,
												"value" : [ 84, 91, 64, 80 ]
											}
, 											{
												"key" : 335,
												"value" : [ 84, 91, 65, 80 ]
											}
, 											{
												"key" : 336,
												"value" : [ 84, 91, 66, 81 ]
											}
, 											{
												"key" : 337,
												"value" : [ 84, 91, 67, 81 ]
											}
, 											{
												"key" : 338,
												"value" : [ 84, 91, 68, 82 ]
											}
, 											{
												"key" : 339,
												"value" : [ 84, 91, 69, 82 ]
											}
, 											{
												"key" : 340,
												"value" : [ 84, 91, 70, 82 ]
											}
, 											{
												"key" : 341,
												"value" : [ 84, 91, 71, 83 ]
											}
, 											{
												"key" : 342,
												"value" : [ 84, 91, 72, 83 ]
											}
, 											{
												"key" : 343,
												"value" : [ 84, 91, 72, 84 ]
											}
, 											{
												"key" : 344,
												"value" : [ 84, 91, 73, 84 ]
											}
, 											{
												"key" : 345,
												"value" : [ 84, 91, 74, 84 ]
											}
, 											{
												"key" : 346,
												"value" : [ 84, 91, 74, 85 ]
											}
, 											{
												"key" : 347,
												"value" : [ 84, 91, 75, 85 ]
											}
, 											{
												"key" : 348,
												"value" : [ 84, 91, 76, 85 ]
											}
, 											{
												"key" : 349,
												"value" : [ 84, 91, 76, 86 ]
											}
, 											{
												"key" : 350,
												"value" : [ 84, 91, 47, 75 ]
											}
, 											{
												"key" : 351,
												"value" : [ 84, 91, 50, 75 ]
											}
, 											{
												"key" : 352,
												"value" : [ 85, 91, 52, 76 ]
											}
, 											{
												"key" : 353,
												"value" : [ 85, 91, 55, 77 ]
											}
, 											{
												"key" : 354,
												"value" : [ 85, 91, 57, 77 ]
											}
, 											{
												"key" : 355,
												"value" : [ 85, 91, 58, 78 ]
											}
, 											{
												"key" : 356,
												"value" : [ 85, 91, 60, 78 ]
											}
, 											{
												"key" : 357,
												"value" : [ 85, 91, 61, 79 ]
											}
, 											{
												"key" : 358,
												"value" : [ 85, 91, 63, 79 ]
											}
, 											{
												"key" : 359,
												"value" : [ 85, 91, 64, 80 ]
											}
, 											{
												"key" : 360,
												"value" : [ 85, 91, 65, 80 ]
											}
, 											{
												"key" : 361,
												"value" : [ 85, 91, 66, 81 ]
											}
, 											{
												"key" : 362,
												"value" : [ 85, 91, 67, 81 ]
											}
, 											{
												"key" : 363,
												"value" : [ 85, 91, 68, 82 ]
											}
, 											{
												"key" : 364,
												"value" : [ 85, 91, 69, 82 ]
											}
, 											{
												"key" : 365,
												"value" : [ 85, 91, 70, 82 ]
											}
, 											{
												"key" : 366,
												"value" : [ 85, 91, 71, 83 ]
											}
, 											{
												"key" : 367,
												"value" : [ 85, 91, 72, 83 ]
											}
, 											{
												"key" : 368,
												"value" : [ 85, 91, 72, 84 ]
											}
, 											{
												"key" : 369,
												"value" : [ 85, 91, 73, 84 ]
											}
, 											{
												"key" : 370,
												"value" : [ 85, 91, 74, 84 ]
											}
, 											{
												"key" : 371,
												"value" : [ 85, 91, 74, 85 ]
											}
, 											{
												"key" : 372,
												"value" : [ 85, 91, 75, 85 ]
											}
, 											{
												"key" : 373,
												"value" : [ 85, 91, 76, 85 ]
											}
, 											{
												"key" : 374,
												"value" : [ 85, 91, 76, 86 ]
											}
, 											{
												"key" : 375,
												"value" : [ 85, 91, 47, 75 ]
											}
, 											{
												"key" : 376,
												"value" : [ 85, 91, 50, 75 ]
											}
, 											{
												"key" : 377,
												"value" : [ 85, 91, 52, 76 ]
											}
, 											{
												"key" : 378,
												"value" : [ 85, 91, 55, 77 ]
											}
, 											{
												"key" : 379,
												"value" : [ 85, 91, 57, 77 ]
											}
, 											{
												"key" : 380,
												"value" : [ 85, 91, 58, 78 ]
											}
, 											{
												"key" : 381,
												"value" : [ 85, 91, 60, 78 ]
											}
, 											{
												"key" : 382,
												"value" : [ 85, 91, 61, 79 ]
											}
, 											{
												"key" : 383,
												"value" : [ 85, 91, 63, 79 ]
											}
, 											{
												"key" : 384,
												"value" : [ 87, 92, 64, 80 ]
											}
, 											{
												"key" : 385,
												"value" : [ 87, 92, 65, 80 ]
											}
, 											{
												"key" : 386,
												"value" : [ 87, 92, 66, 81 ]
											}
, 											{
												"key" : 387,
												"value" : [ 87, 92, 67, 81 ]
											}
, 											{
												"key" : 388,
												"value" : [ 87, 92, 68, 82 ]
											}
, 											{
												"key" : 389,
												"value" : [ 87, 92, 69, 82 ]
											}
, 											{
												"key" : 390,
												"value" : [ 87, 92, 70, 82 ]
											}
, 											{
												"key" : 391,
												"value" : [ 87, 92, 71, 83 ]
											}
, 											{
												"key" : 392,
												"value" : [ 87, 92, 72, 83 ]
											}
, 											{
												"key" : 393,
												"value" : [ 87, 92, 72, 84 ]
											}
, 											{
												"key" : 394,
												"value" : [ 87, 92, 73, 84 ]
											}
, 											{
												"key" : 395,
												"value" : [ 87, 92, 74, 84 ]
											}
, 											{
												"key" : 396,
												"value" : [ 87, 92, 74, 85 ]
											}
, 											{
												"key" : 397,
												"value" : [ 87, 92, 75, 85 ]
											}
, 											{
												"key" : 398,
												"value" : [ 87, 92, 76, 85 ]
											}
, 											{
												"key" : 399,
												"value" : [ 87, 92, 76, 86 ]
											}
, 											{
												"key" : 400,
												"value" : [ 87, 92, 47, 75 ]
											}
, 											{
												"key" : 401,
												"value" : [ 87, 92, 50, 75 ]
											}
, 											{
												"key" : 402,
												"value" : [ 87, 92, 52, 76 ]
											}
, 											{
												"key" : 403,
												"value" : [ 87, 92, 55, 77 ]
											}
, 											{
												"key" : 404,
												"value" : [ 87, 92, 57, 77 ]
											}
, 											{
												"key" : 405,
												"value" : [ 87, 92, 58, 78 ]
											}
, 											{
												"key" : 406,
												"value" : [ 87, 92, 60, 78 ]
											}
, 											{
												"key" : 407,
												"value" : [ 87, 92, 61, 79 ]
											}
, 											{
												"key" : 408,
												"value" : [ 87, 92, 63, 79 ]
											}
, 											{
												"key" : 409,
												"value" : [ 87, 92, 64, 80 ]
											}
, 											{
												"key" : 410,
												"value" : [ 87, 92, 65, 80 ]
											}
, 											{
												"key" : 411,
												"value" : [ 87, 92, 66, 81 ]
											}
, 											{
												"key" : 412,
												"value" : [ 87, 92, 67, 81 ]
											}
, 											{
												"key" : 413,
												"value" : [ 87, 92, 68, 82 ]
											}
, 											{
												"key" : 414,
												"value" : [ 87, 92, 69, 82 ]
											}
, 											{
												"key" : 415,
												"value" : [ 87, 92, 70, 82 ]
											}
, 											{
												"key" : 416,
												"value" : [ 88, 93, 71, 83 ]
											}
, 											{
												"key" : 417,
												"value" : [ 88, 93, 72, 83 ]
											}
, 											{
												"key" : 418,
												"value" : [ 88, 93, 72, 84 ]
											}
, 											{
												"key" : 419,
												"value" : [ 88, 93, 73, 84 ]
											}
, 											{
												"key" : 420,
												"value" : [ 88, 93, 74, 84 ]
											}
, 											{
												"key" : 421,
												"value" : [ 88, 93, 74, 85 ]
											}
, 											{
												"key" : 422,
												"value" : [ 88, 93, 75, 85 ]
											}
, 											{
												"key" : 423,
												"value" : [ 88, 93, 76, 85 ]
											}
, 											{
												"key" : 424,
												"value" : [ 88, 93, 76, 86 ]
											}
, 											{
												"key" : 425,
												"value" : [ 88, 93, 47, 75 ]
											}
, 											{
												"key" : 426,
												"value" : [ 88, 93, 50, 75 ]
											}
, 											{
												"key" : 427,
												"value" : [ 88, 93, 52, 76 ]
											}
, 											{
												"key" : 428,
												"value" : [ 88, 93, 55, 77 ]
											}
, 											{
												"key" : 429,
												"value" : [ 88, 93, 57, 77 ]
											}
, 											{
												"key" : 430,
												"value" : [ 88, 93, 58, 78 ]
											}
, 											{
												"key" : 431,
												"value" : [ 88, 93, 60, 78 ]
											}
, 											{
												"key" : 432,
												"value" : [ 88, 93, 61, 79 ]
											}
, 											{
												"key" : 433,
												"value" : [ 88, 93, 63, 79 ]
											}
, 											{
												"key" : 434,
												"value" : [ 88, 93, 64, 80 ]
											}
, 											{
												"key" : 435,
												"value" : [ 88, 93, 65, 80 ]
											}
, 											{
												"key" : 436,
												"value" : [ 88, 93, 66, 81 ]
											}
, 											{
												"key" : 437,
												"value" : [ 88, 93, 67, 81 ]
											}
, 											{
												"key" : 438,
												"value" : [ 88, 93, 68, 82 ]
											}
, 											{
												"key" : 439,
												"value" : [ 88, 93, 69, 82 ]
											}
, 											{
												"key" : 440,
												"value" : [ 88, 93, 70, 82 ]
											}
, 											{
												"key" : 441,
												"value" : [ 88, 93, 71, 83 ]
											}
, 											{
												"key" : 442,
												"value" : [ 88, 93, 72, 83 ]
											}
, 											{
												"key" : 443,
												"value" : [ 88, 93, 72, 84 ]
											}
, 											{
												"key" : 444,
												"value" : [ 88, 93, 73, 84 ]
											}
, 											{
												"key" : 445,
												"value" : [ 88, 93, 74, 84 ]
											}
, 											{
												"key" : 446,
												"value" : [ 88, 93, 74, 85 ]
											}
, 											{
												"key" : 447,
												"value" : [ 88, 93, 75, 85 ]
											}
, 											{
												"key" : 448,
												"value" : [ 89, 94, 76, 85 ]
											}
, 											{
												"key" : 449,
												"value" : [ 89, 94, 76, 86 ]
											}
, 											{
												"key" : 450,
												"value" : [ 89, 94, 47, 75 ]
											}
, 											{
												"key" : 451,
												"value" : [ 89, 94, 50, 75 ]
											}
, 											{
												"key" : 452,
												"value" : [ 89, 94, 52, 76 ]
											}
, 											{
												"key" : 453,
												"value" : [ 89, 94, 55, 77 ]
											}
, 											{
												"key" : 454,
												"value" : [ 89, 94, 57, 77 ]
											}
, 											{
												"key" : 455,
												"value" : [ 89, 94, 58, 78 ]
											}
, 											{
												"key" : 456,
												"value" : [ 89, 94, 60, 78 ]
											}
, 											{
												"key" : 457,
												"value" : [ 89, 94, 61, 79 ]
											}
, 											{
												"key" : 458,
												"value" : [ 89, 94, 63, 79 ]
											}
, 											{
												"key" : 459,
												"value" : [ 89, 94, 64, 80 ]
											}
, 											{
												"key" : 460,
												"value" : [ 89, 94, 65, 80 ]
											}
, 											{
												"key" : 461,
												"value" : [ 89, 94, 66, 81 ]
											}
, 											{
												"key" : 462,
												"value" : [ 89, 94, 67, 81 ]
											}
, 											{
												"key" : 463,
												"value" : [ 89, 94, 68, 82 ]
											}
, 											{
												"key" : 464,
												"value" : [ 89, 94, 69, 82 ]
											}
, 											{
												"key" : 465,
												"value" : [ 89, 94, 70, 82 ]
											}
, 											{
												"key" : 466,
												"value" : [ 89, 94, 71, 83 ]
											}
, 											{
												"key" : 467,
												"value" : [ 89, 94, 72, 83 ]
											}
, 											{
												"key" : 468,
												"value" : [ 89, 94, 72, 84 ]
											}
, 											{
												"key" : 469,
												"value" : [ 89, 94, 73, 84 ]
											}
, 											{
												"key" : 470,
												"value" : [ 89, 94, 74, 84 ]
											}
, 											{
												"key" : 471,
												"value" : [ 89, 94, 74, 85 ]
											}
, 											{
												"key" : 472,
												"value" : [ 89, 94, 75, 85 ]
											}
, 											{
												"key" : 473,
												"value" : [ 89, 94, 76, 85 ]
											}
, 											{
												"key" : 474,
												"value" : [ 89, 94, 76, 86 ]
											}
, 											{
												"key" : 475,
												"value" : [ 89, 94, 47, 75 ]
											}
, 											{
												"key" : 476,
												"value" : [ 89, 94, 50, 75 ]
											}
, 											{
												"key" : 477,
												"value" : [ 89, 94, 52, 76 ]
											}
, 											{
												"key" : 478,
												"value" : [ 89, 94, 55, 77 ]
											}
, 											{
												"key" : 479,
												"value" : [ 89, 94, 57, 77 ]
											}
, 											{
												"key" : 480,
												"value" : [ 90, 95, 58, 78 ]
											}
, 											{
												"key" : 481,
												"value" : [ 90, 95, 60, 78 ]
											}
, 											{
												"key" : 482,
												"value" : [ 90, 95, 61, 79 ]
											}
, 											{
												"key" : 483,
												"value" : [ 90, 95, 63, 79 ]
											}
, 											{
												"key" : 484,
												"value" : [ 90, 95, 64, 80 ]
											}
, 											{
												"key" : 485,
												"value" : [ 90, 95, 65, 80 ]
											}
, 											{
												"key" : 486,
												"value" : [ 90, 95, 66, 81 ]
											}
, 											{
												"key" : 487,
												"value" : [ 90, 95, 67, 81 ]
											}
, 											{
												"key" : 488,
												"value" : [ 90, 95, 68, 82 ]
											}
, 											{
												"key" : 489,
												"value" : [ 90, 95, 69, 82 ]
											}
, 											{
												"key" : 490,
												"value" : [ 90, 95, 70, 82 ]
											}
, 											{
												"key" : 491,
												"value" : [ 90, 95, 71, 83 ]
											}
, 											{
												"key" : 492,
												"value" : [ 90, 95, 72, 83 ]
											}
, 											{
												"key" : 493,
												"value" : [ 90, 95, 72, 84 ]
											}
, 											{
												"key" : 494,
												"value" : [ 90, 95, 73, 84 ]
											}
, 											{
												"key" : 495,
												"value" : [ 90, 95, 74, 84 ]
											}
, 											{
												"key" : 496,
												"value" : [ 90, 95, 74, 85 ]
											}
, 											{
												"key" : 497,
												"value" : [ 90, 95, 75, 85 ]
											}
, 											{
												"key" : 498,
												"value" : [ 90, 95, 76, 85 ]
											}
, 											{
												"key" : 499,
												"value" : [ 90, 95, 76, 86 ]
											}
, 											{
												"key" : 500,
												"value" : [ 90, 95, 47, 75 ]
											}
, 											{
												"key" : 501,
												"value" : [ 90, 95, 50, 75 ]
											}
, 											{
												"key" : 502,
												"value" : [ 90, 95, 52, 76 ]
											}
, 											{
												"key" : 503,
												"value" : [ 90, 95, 55, 77 ]
											}
, 											{
												"key" : 504,
												"value" : [ 90, 95, 57, 77 ]
											}
, 											{
												"key" : 505,
												"value" : [ 90, 95, 58, 78 ]
											}
, 											{
												"key" : 506,
												"value" : [ 90, 95, 60, 78 ]
											}
, 											{
												"key" : 507,
												"value" : [ 90, 95, 61, 79 ]
											}
, 											{
												"key" : 508,
												"value" : [ 90, 95, 63, 79 ]
											}
, 											{
												"key" : 509,
												"value" : [ 90, 95, 64, 80 ]
											}
, 											{
												"key" : 510,
												"value" : [ 90, 95, 65, 80 ]
											}
, 											{
												"key" : 511,
												"value" : [ 90, 95, 66, 81 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 277.5, 176.5, 84.0, 19.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll @embed 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 632.0, 652.0, 100.0, 19.0 ],
									"text" : "o.select /timer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 632.0, 618.0, 222.0, 19.0 ],
									"text" : "o.expr assign(quote(/timer/) + /count\\, bang)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 575.0, 565.0, 100.0, 19.0 ],
									"text" : "o.pack /count"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 575.0, 537.0, 100.0, 19.0 ],
									"text" : "counter 0 1 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 547.0, 602.0, 47.0, 19.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 72.0, 56.0, 19.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 309.5, 113.5, 32.5, 19.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 597.5, 113.5, 32.5, 19.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 563.5, 80.5, 53.0, 19.0 ],
									"text" : "zl slice 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 275.5, 80.5, 53.0, 19.0 ],
									"text" : "zl slice 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 275.5, 45.5, 100.0, 19.0 ],
									"text" : "o.atomize /bell /oil"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 4,
											"architecture" : "x86"
										}
,
										"rect" : [ 137.0, 290.0, 849.0, 571.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 11.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 387.0, 280.5, 167.0, 19.0 ],
													"text" : "o.expr /times = /offset + /timetag"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-79",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 147.0, 187.5, 100.0, 19.0 ],
													"text" : "o.route /prev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 147.0, 101.5, 68.0, 19.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 147.0, 126.5, 316.0, 19.0 ],
													"text" : "o.cond bound(/prev/timetag)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 228.0, 280.5, 88.0, 19.0 ],
													"text" : "o.prepend /prev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 147.0, 154.5, 257.0, 19.0 ],
													"text" : "o.expr /offset = nfill(4\\, /prev/timetag - /bellPhrTime)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-23",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 147.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-24",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 387.0, 361.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 237.5, 425.5, 628.5, 425.5, 628.5, 91.5, 205.5, 91.5 ],
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-69", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-69", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-77", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-79", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-79", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 143.5, 369.5, 76.0, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 11.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 11.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p make offset"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 50.0, 173.5, 46.0, 19.0 ],
									"text" : "t b b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.5, 321.5, 120.0, 19.0 ],
									"text" : "o.timetag /bellPhrTime"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 277.5, 113.5, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-54",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 277.5, 143.5, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 277.5, 244.5, 98.0, 19.0 ],
									"text" : "o.timetag /timetag"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 277.5, 216.5, 188.0, 19.0 ],
									"text" : "o.pack /midi /offset 0.1 0.1 0.1 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 560.5, 156.5, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 113.5, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 143.5, 72.0, 19.0 ],
									"text" : "metro 6000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 547.0, 474.5, 86.0, 19.0 ],
									"text" : "o.prepend /new"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 547.0, 378.5, 247.0, 19.0 ],
									"text" : "o.expr /times = cumsum( /offset ) + /timetag"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 547.0, 354.5, 116.0, 19.0 ],
									"text" : "o.timetag /timetag"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 36.0, 460.5, 34.0, 17.0 ],
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-9",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 598.0, 189.5, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 687.0, 199.5, 33.0, 17.0 ],
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 512,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0, 0.335938, 0.137827, 0.837891 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0, 0.507812, 0.312105, 0.935547, 1.06295, 0.21875, 0.058825, 0.642578 ]
											}
, 											{
												"key" : 2,
												"value" : [ 0, 0.857422, 0.893188, 0.453125, 0.249115, 0.927734 ]
											}
, 											{
												"key" : 3,
												"value" : [ 0, 0.244141, 0.073115, 0.693359, 0.584824, 0.792969, 0.763962, 0.611328 ]
											}
, 											{
												"key" : 4,
												"value" : [ 0, 0.888672 ]
											}
, 											{
												"key" : 5,
												"value" : [ 0, 0.365234, 0.162027, 0.869141, 0.916055, 0.423828 ]
											}
, 											{
												"key" : 6,
												"value" : [ 0, 0.914062, 1.01472, 0.289062, 0.10127, 0.769531, 0.719309, 0.660156 ]
											}
, 											{
												"key" : 7,
												"value" : [ 0, 0.837891, 0.851775, 0.505859 ]
											}
, 											{
												"key" : 8,
												"value" : [ 0, 0.935547, 1.06312, 0.21875, 0.058696, 0.642578, 0.501862, 0.859375 ]
											}
, 											{
												"key" : 9,
												"value" : [ 0, 0.451172 ]
											}
, 											{
												"key" : 10,
												"value" : [ 0, 0.927734, 1.04417, 0.246094, 0.074118, 0.697266 ]
											}
, 											{
												"key" : 11,
												"value" : [ 0, 0.789062, 0.754929, 0.621094, 0.468715, 0.880859, 0.939855, 0.390625 ]
											}
, 											{
												"key" : 12,
												"value" : [ 0, 0.892578, 0.966919, 0.355469, 0.152988, 0.857422 ]
											}
, 											{
												"key" : 13,
												"value" : [ 0, 0.453125, 0.248775, 0.927734, 1.04511, 0.246094, 0.073322, 0.695312 ]
											}
, 											{
												"key" : 14,
												"value" : [ 0, 0.792969, 0.762098, 0.613281 ]
											}
, 											{
												"key" : 15,
												"value" : [ 0, 0.886719, 0.955412, 0.371094, 0.166756, 0.875, 0.92709, 0.408203 ]
											}
, 											{
												"key" : 16,
												"value" : [ 0, 0.90625, 0.994562, 0.316406 ]
											}
, 											{
												"key" : 17,
												"value" : [ 0, 0.8125, 0.798959, 0.570312, 0.394629, 0.917969, 1.02092, 0.279297 ]
											}
, 											{
												"key" : 18,
												"value" : [ 0, 0.755859, 0.693244, 0.689453 ]
											}
, 											{
												"key" : 19,
												"value" : [ 0, 0.800781, 0.778604, 0.59375, 0.42852, 0.902344, 0.987918, 0.326172 ]
											}
, 											{
												"key" : 20,
												"value" : [ 0, 0.824219, 0.823323, 0.541016, 0.35505, 0.929688 ]
											}
, 											{
												"key" : 21,
												"value" : [ 0, 0.240234, 0.070252, 0.685547, 0.569187, 0.806641, 0.789891, 0.580078 ]
											}
, 											{
												"key" : 22,
												"value" : [ 0, 0.912109, 1.00725, 0.298828, 0.108747, 0.787109 ]
											}
, 											{
												"key" : 23,
												"value" : [ 0, 0.626953, 0.477538, 0.875, 0.928205, 0.40625, 0.20119, 0.904297 ]
											}
, 											{
												"key" : 24,
												"value" : [ 0, 0.320312 ]
											}
, 											{
												"key" : 25,
												"value" : [ 0, 0.816406, 0.807254, 0.560547, 0.381025, 0.921875 ]
											}
, 											{
												"key" : 26,
												"value" : [ 0, 0.263672, 0.084979, 0.728516, 0.645559, 0.738281, 0.65972, 0.722656 ]
											}
, 											{
												"key" : 27,
												"value" : [ 0, 0.748047, 0.678256, 0.705078 ]
											}
, 											{
												"key" : 28,
												"value" : [ 0, 0.777344, 0.734336, 0.644531, 0.50422, 0.857422, 0.890919, 0.455078 ]
											}
, 											{
												"key" : 29,
												"value" : [ 0, 0.929688 ]
											}
, 											{
												"key" : 30,
												"value" : [ 0, 0.242188, 0.071235, 0.6875, 0.574598, 0.802734 ]
											}
, 											{
												"key" : 31,
												"value" : [ 0, 0.591797, 0.424539, 0.904297, 0.99218, 0.320312, 0.124522, 0.816406 ]
											}
, 											{
												"key" : 32,
												"value" : [ 0, 0.558594, 0.380123, 0.921875, 1.03257, 0.263672 ]
											}
, 											{
												"key" : 33,
												"value" : [ 0, 0.728516, 0.642553, 0.740234, 0.664968, 0.71875, 0.625716, 0.755859 ]
											}
, 											{
												"key" : 34,
												"value" : [ 0, 0.6875, 0.574281, 0.802734 ]
											}
, 											{
												"key" : 35,
												"value" : [ 0, 0.589844, 0.423661, 0.904297, 0.993108, 0.318359, 0.123524, 0.814453 ]
											}
, 											{
												"key" : 36,
												"value" : [ 0, 0.564453, 0.385731, 0.919922 ]
											}
, 											{
												"key" : 37,
												"value" : [ 0, 0.269531, 0.088323, 0.738281, 0.661569, 0.720703, 0.631683, 0.75 ]
											}
, 											{
												"key" : 38,
												"value" : [ 0, 0.699219, 0.59246, 0.787109 ]
											}
, 											{
												"key" : 39,
												"value" : [ 0, 0.625, 0.47523, 0.876953, 0.931287, 0.402344, 0.197161, 0.902344 ]
											}
, 											{
												"key" : 40,
												"value" : [ 0, 0.328125 ]
											}
, 											{
												"key" : 41,
												"value" : [ 0, 0.828125, 0.830235, 0.533203, 0.344041, 0.931641 ]
											}
, 											{
												"key" : 42,
												"value" : [ 0, 0.232422, 0.065829, 0.669922, 0.544241, 0.828125, 0.830119, 0.533203 ]
											}
, 											{
												"key" : 43,
												"value" : [ 0, 0.931641, 1.05402, 0.232422, 0.065894, 0.669922 ]
											}
, 											{
												"key" : 44,
												"value" : [ 0, 0.826172, 0.829528, 0.533203, 0.345162, 0.931641, 1.05361, 0.232422 ]
											}
, 											{
												"key" : 45,
												"value" : [ 0, 0.671875, 0.546552, 0.826172 ]
											}
, 											{
												"key" : 46,
												"value" : [ 0, 0.537109, 0.350043, 0.931641, 1.05132, 0.236328, 0.06811, 0.677734 ]
											}
, 											{
												"key" : 47,
												"value" : [ 0, 0.816406, 0.809362, 0.558594 ]
											}
, 											{
												"key" : 48,
												"value" : [ 0, 0.923828, 1.03444, 0.259766, 0.082671, 0.722656, 0.634232, 0.748047 ]
											}
, 											{
												"key" : 49,
												"value" : [ 0, 0.703125, 0.600245, 0.779297 ]
											}
, 											{
												"key" : 50,
												"value" : [ 0, 0.640625, 0.497958, 0.861328, 0.89993, 0.443359, 0.239591, 0.925781 ]
											}
, 											{
												"key" : 51,
												"value" : [ 0, 0.255859, 0.079602, 0.714844, 0.618813, 0.763672 ]
											}
, 											{
												"key" : 52,
												"value" : [ 0, 0.675781, 0.553361, 0.820312, 0.815591, 0.550781, 0.367483, 0.925781 ]
											}
, 											{
												"key" : 53,
												"value" : [ 0, 0.25, 0.076529, 0.705078 ]
											}
, 											{
												"key" : 54,
												"value" : [ 0, 0.777344, 0.733343, 0.646484, 0.505943, 0.855469, 0.888413, 0.458984 ]
											}
, 											{
												"key" : 55,
												"value" : [ 0, 0.929688, 1.04985, 0.238281, 0.069326, 0.681641 ]
											}
, 											{
												"key" : 56,
												"value" : [ 0, 0.810547, 0.798303, 0.570312, 0.39571, 0.917969, 1.01999, 0.28125 ]
											}
, 											{
												"key" : 57,
												"value" : [ 0, 0.757812, 0.697202, 0.685547, 0.569078, 0.806641 ]
											}
, 											{
												"key" : 58,
												"value" : [ 0, 0.580078, 0.409346, 0.912109, 1.00753, 0.298828, 0.108459, 0.785156 ]
											}
, 											{
												"key" : 59,
												"value" : [ 0, 0.628906, 0.479498, 0.873047 ]
											}
, 											{
												"key" : 60,
												"value" : [ 0, 0.410156, 0.20466, 0.90625, 0.997545, 0.3125, 0.118799, 0.806641 ]
											}
, 											{
												"key" : 61,
												"value" : [ 0, 0.583984, 0.41329, 0.910156, 1.00369, 0.304688 ]
											}
, 											{
												"key" : 62,
												"value" : [ 0, 0.792969, 0.763909, 0.611328, 0.45338, 0.888672, 0.959209, 0.365234 ]
											}
, 											{
												"key" : 63,
												"value" : [ 0, 0.869141 ]
											}
, 											{
												"key" : 64,
												"value" : [ 0, 0.421875, 0.216955, 0.914062, 1.01419, 0.289062 ]
											}
, 											{
												"key" : 65,
												"value" : [ 0, 0.771484, 0.721486, 0.658203, 0.526569, 0.841797, 0.857603, 0.498047 ]
											}
, 											{
												"key" : 66,
												"value" : [ 0, 0.935547, 1.06347, 0.21875, 0.058423, 0.642578 ]
											}
, 											{
												"key" : 67,
												"value" : [ 0, 0.859375, 0.896744, 0.447266, 0.244075, 0.927734, 1.04157, 0.25 ]
											}
, 											{
												"key" : 68,
												"value" : [ 0, 0.705078, 0.602092, 0.777344 ]
											}
, 											{
												"key" : 69,
												"value" : [ 0, 0.644531, 0.503398, 0.857422, 0.89211, 0.455078, 0.25065, 0.929688 ]
											}
, 											{
												"key" : 70,
												"value" : [ 0, 0.244141, 0.072204, 0.691406, 0.579889, 0.798828 ]
											}
, 											{
												"key" : 71,
												"value" : [ 0, 0.601562, 0.439321, 0.896484, 0.975874, 0.341797, 0.142615, 0.84375 ]
											}
, 											{
												"key" : 72,
												"value" : [ 0, 0.488281, 0.290559, 0.935547 ]
											}
, 											{
												"key" : 73,
												"value" : [ 0, 0.220703, 0.05907, 0.644531, 0.504154, 0.857422, 0.891015, 0.455078 ]
											}
, 											{
												"key" : 74,
												"value" : [ 0, 0.929688, 1.04748, 0.242188 ]
											}
, 											{
												"key" : 75,
												"value" : [ 0, 0.6875, 0.57502, 0.802734, 0.780276, 0.591797, 0.42571, 0.904297 ]
											}
, 											{
												"key" : 76,
												"value" : [ 0, 0.322266, 0.125865, 0.818359, 0.812378, 0.554688 ]
											}
, 											{
												"key" : 77,
												"value" : [ 0, 0.925781, 1.03791, 0.255859, 0.079572, 0.714844, 0.618665, 0.763672 ]
											}
, 											{
												"key" : 78,
												"value" : [ 0, 0.675781, 0.552913, 0.820312 ]
											}
, 											{
												"key" : 79,
												"value" : [ 0, 0.548828, 0.366322, 0.927734, 1.04213, 0.25 ]
											}
, 											{
												"key" : 80,
												"value" : [ 0, 0.703125, 0.599569, 0.78125, 0.739098, 0.638672 ]
											}
, 											{
												"key" : 81,
												"value" : [ 0, 0.863281, 0.902756, 0.439453, 0.23564, 0.923828 ]
											}
, 											{
												"key" : 82,
												"value" : [ 0, 0.259766, 0.082743, 0.722656, 0.634592, 0.748047 ]
											}
, 											{
												"key" : 83,
												"value" : [ 0, 0.703125, 0.601345, 0.779297, 0.73608, 0.642578 ]
											}
, 											{
												"key" : 84,
												"value" : [ 0, 0.859375, 0.895288, 0.449219, 0.246134, 0.927734, 1.04316, 0.248047 ]
											}
, 											{
												"key" : 85,
												"value" : [ 0, 0.699219, 0.594839, 0.785156, 0.747114, 0.630859 ]
											}
, 											{
												"key" : 86,
												"value" : [ 0, 0.871094, 0.92199, 0.414062, 0.20941, 0.910156, 1.00431, 0.302734 ]
											}
, 											{
												"key" : 87,
												"value" : [ 0, 0.792969, 0.761468, 0.613281 ]
											}
, 											{
												"key" : 88,
												"value" : [ 0, 0.886719, 0.954078, 0.371094, 0.168384, 0.876953, 0.930765, 0.404297 ]
											}
, 											{
												"key" : 89,
												"value" : [ 0, 0.902344 ]
											}
, 											{
												"key" : 90,
												"value" : [ 0, 0.326172, 0.130073, 0.826172, 0.826336, 0.537109 ]
											}
, 											{
												"key" : 91,
												"value" : [ 0, 0.931641, 1.05122, 0.236328, 0.06819, 0.677734, 0.557677, 0.816406 ]
											}
, 											{
												"key" : 92,
												"value" : [ 0, 0.558594, 0.378761, 0.923828, 1.03358, 0.261719 ]
											}
, 											{
												"key" : 93,
												"value" : [ 0, 0.724609, 0.638062, 0.744141, 0.672799, 0.710938, 0.611961, 0.769531 ]
											}
, 											{
												"key" : 94,
												"value" : [ 0, 0.662109, 0.532748, 0.835938 ]
											}
, 											{
												"key" : 95,
												"value" : [ 0, 0.509766, 0.316085, 0.935547, 1.06243, 0.220703, 0.059228, 0.644531 ]
											}
, 											{
												"key" : 96,
												"value" : [ 0, 0.857422, 0.889618, 0.457031, 0.254212, 0.929688 ]
											}
, 											{
												"key" : 97,
												"value" : [ 0, 0.240234, 0.070222, 0.685547, 0.569023, 0.806641, 0.790161, 0.580078 ]
											}
, 											{
												"key" : 98,
												"value" : [ 0, 0.912109, 1.00768, 0.298828 ]
											}
, 											{
												"key" : 99,
												"value" : [ 0, 0.785156, 0.74806, 0.628906, 0.480509, 0.873047 ]
											}
, 											{
												"key" : 100,
												"value" : [ 0, 0.412109, 0.206469, 0.908203, 1.00017, 0.308594 ]
											}
, 											{
												"key" : 101,
												"value" : [ 0, 0.800781, 0.777628, 0.595703, 0.43016, 0.902344 ]
											}
, 											{
												"key" : 102,
												"value" : [ 0, 0.328125, 0.13111, 0.826172, 0.829695, 0.533203, 0.344896, 0.931641 ]
											}
, 											{
												"key" : 103,
												"value" : [ 0, 0.232422, 0.066135, 0.669922, 0.546, 0.826172 ]
											}
, 											{
												"key" : 104,
												"value" : [ 0, 0.535156, 0.348648, 0.931641, 1.052, 0.234375, 0.067552, 0.675781 ]
											}
, 											{
												"key" : 105,
												"value" : [ 0, 0.820312, 0.814439, 0.550781, 0.369346, 0.925781 ]
											}
, 											{
												"key" : 106,
												"value" : [ 0, 0.251953, 0.07759, 0.708984, 0.60848, 0.773438, 0.723909, 0.65625 ]
											}
, 											{
												"key" : 107,
												"value" : [ 0, 0.84375, 0.86403, 0.490234 ]
											}
, 											{
												"key" : 108,
												"value" : [ 0, 0.935547, 1.0628, 0.220703, 0.05894, 0.644531, 0.503357, 0.857422 ]
											}
, 											{
												"key" : 109,
												"value" : [ 0, 0.453125, 0.250566, 0.929688, 1.04636, 0.244141 ]
											}
, 											{
												"key" : 110,
												"value" : [ 0, 0.691406, 0.580155, 0.796875, 0.771754, 0.601562, 0.44007, 0.896484 ]
											}
, 											{
												"key" : 111,
												"value" : [ 0, 0.34375, 0.143598, 0.845703 ]
											}
, 											{
												"key" : 112,
												"value" : [ 0, 0.486328, 0.286316, 0.935547, 1.06191, 0.220703 ]
											}
, 											{
												"key" : 113,
												"value" : [ 0, 0.646484, 0.507547, 0.855469, 0.886071, 0.462891 ]
											}
, 											{
												"key" : 114,
												"value" : [ 0, 0.931641, 1.05182, 0.236328, 0.067696, 0.675781, 0.554889, 0.818359 ]
											}
, 											{
												"key" : 115,
												"value" : [ 0, 0.552734, 0.371456, 0.925781, 1.03875, 0.253906 ]
											}
, 											{
												"key" : 116,
												"value" : [ 0, 0.710938, 0.614874, 0.767578, 0.712944, 0.667969, 0.541489, 0.830078 ]
											}
, 											{
												"key" : 117,
												"value" : [ 0, 0.527344, 0.337364, 0.933594, 1.0568, 0.228516 ]
											}
, 											{
												"key" : 118,
												"value" : [ 0, 0.662109, 0.531602, 0.837891, 0.849871, 0.507812, 0.313352, 0.935547 ]
											}
, 											{
												"key" : 119,
												"value" : [ 0, 0.21875, 0.058936, 0.644531 ]
											}
, 											{
												"key" : 120,
												"value" : [ 0, 0.857422, 0.8922, 0.453125, 0.250522, 0.929688, 1.04633, 0.244141 ]
											}
, 											{
												"key" : 121,
												"value" : [ 0, 0.691406, 0.580294, 0.796875 ]
											}
, 											{
												"key" : 122,
												"value" : [ 0, 0.601562, 0.440461, 0.896484, 0.974564, 0.34375, 0.144114, 0.845703 ]
											}
, 											{
												"key" : 123,
												"value" : [ 0, 0.484375, 0.284117, 0.935547, 1.06145, 0.220703 ]
											}
, 											{
												"key" : 124,
												"value" : [ 0, 0.648438, 0.509725, 0.853516, 0.882876, 0.466797, 0.263941, 0.931641 ]
											}
, 											{
												"key" : 125,
												"value" : [ 0, 0.232422 ]
											}
, 											{
												"key" : 126,
												"value" : [ 0, 0.669922, 0.543524, 0.828125, 0.831253, 0.53125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 0, 0.933594, 1.0548, 0.230469, 0.065269, 0.667969, 0.54101, 0.830078 ]
											}
, 											{
												"key" : 128,
												"value" : [ 0, 0.525391, 0.336179, 0.933594, 1.05724, 0.228516 ]
											}
, 											{
												"key" : 129,
												"value" : [ 0, 0.660156, 0.529564, 0.837891, 0.853011, 0.503906, 0.30853, 0.935547 ]
											}
, 											{
												"key" : 130,
												"value" : [ 0, 0.21875 ]
											}
, 											{
												"key" : 131,
												"value" : [ 0, 0.642578, 0.501147, 0.859375, 0.89536, 0.449219 ]
											}
, 											{
												"key" : 132,
												"value" : [ 0, 0.927734, 1.04308, 0.248047, 0.075055, 0.701172, 0.595191, 0.785156 ]
											}
, 											{
												"key" : 133,
												"value" : [ 0, 0.630859, 0.483162, 0.871094, 0.920595, 0.416016 ]
											}
, 											{
												"key" : 134,
												"value" : [ 0, 0.912109, 1.00685, 0.298828, 0.109153, 0.787109, 0.751383, 0.625 ]
											}
, 											{
												"key" : 135,
												"value" : [ 0, 0.876953 ]
											}
, 											{
												"key" : 136,
												"value" : [ 0, 0.402344, 0.196411, 0.900391, 0.984764, 0.330078 ]
											}
, 											{
												"key" : 137,
												"value" : [ 0, 0.830078, 0.834535, 0.527344, 0.337244, 0.933594, 1.05685, 0.228516 ]
											}
, 											{
												"key" : 138,
												"value" : [ 0, 0.662109, 0.531392, 0.837891, 0.850195, 0.507812 ]
											}
, 											{
												"key" : 139,
												"value" : [ 0, 0.935547, 1.06286, 0.21875, 0.05889, 0.644531, 0.503053, 0.857422 ]
											}
, 											{
												"key" : 140,
												"value" : [ 0, 0.453125 ]
											}
, 											{
												"key" : 141,
												"value" : [ 0, 0.929688, 1.04593, 0.244141, 0.072621, 0.693359 ]
											}
, 											{
												"key" : 142,
												"value" : [ 0, 0.796875, 0.768422, 0.605469, 0.445713, 0.894531, 0.968431, 0.351562 ]
											}
, 											{
												"key" : 143,
												"value" : [ 0, 0.855469, 0.888747, 0.458984, 0.255463, 0.929688 ]
											}
, 											{
												"key" : 144,
												"value" : [ 0, 0.238281, 0.06957, 0.681641, 0.565404, 0.810547, 0.796087, 0.574219 ]
											}
, 											{
												"key" : 145,
												"value" : [ 0, 0.916016, 1.01677, 0.285156 ]
											}
, 											{
												"key" : 146,
												"value" : [ 0, 0.765625, 0.710746, 0.669922, 0.545334, 0.826172 ]
											}
, 											{
												"key" : 147,
												"value" : [ 0, 0.535156, 0.34697, 0.931641, 1.05279, 0.234375 ]
											}
, 											{
												"key" : 148,
												"value" : [ 0, 0.673828, 0.550393, 0.822266, 0.820343, 0.544922 ]
											}
, 											{
												"key" : 149,
												"value" : [ 0, 0.929688, 1.04607, 0.244141, 0.0725, 0.691406, 0.581497, 0.796875 ]
											}
, 											{
												"key" : 150,
												"value" : [ 0, 0.605469, 0.443854, 0.894531, 0.970619, 0.349609 ]
											}
, 											{
												"key" : 151,
												"value" : [ 0, 0.853516, 0.88187, 0.466797, 0.265403, 0.933594, 1.05497, 0.230469 ]
											}
, 											{
												"key" : 152,
												"value" : [ 0, 0.667969, 0.540216, 0.830078 ]
											}
, 											{
												"key" : 153,
												"value" : [ 0, 0.525391, 0.334216, 0.933594, 1.05793, 0.226562, 0.062758, 0.658203 ]
											}
, 											{
												"key" : 154,
												"value" : [ 0, 0.841797, 0.857967, 0.498047 ]
											}
, 											{
												"key" : 155,
												"value" : [ 0, 0.935547, 1.06346, 0.21875, 0.058429, 0.642578 ]
											}
, 											{
												"key" : 156,
												"value" : [ 0, 0.859375, 0.896689, 0.447266, 0.244152, 0.927734, 1.04163, 0.25 ]
											}
, 											{
												"key" : 157,
												"value" : [ 0, 0.705078, 0.601814, 0.779297, 0.735282, 0.642578 ]
											}
, 											{
												"key" : 158,
												"value" : [ 0, 0.857422, 0.893294, 0.453125, 0.248964, 0.927734, 1.04524, 0.244141 ]
											}
, 											{
												"key" : 159,
												"value" : [ 0, 0.695312, 0.585318, 0.792969, 0.763135, 0.611328 ]
											}
, 											{
												"key" : 160,
												"value" : [ 0, 0.888672, 0.957592, 0.367188, 0.164111, 0.871094, 0.920983, 0.416016 ]
											}
, 											{
												"key" : 161,
												"value" : [ 0, 0.910156, 1.00615, 0.300781 ]
											}
, 											{
												"key" : 162,
												"value" : [ 0, 0.789062, 0.75418, 0.623047, 0.469999, 0.878906 ]
											}
, 											{
												"key" : 163,
												"value" : [ 0, 0.392578, 0.188263, 0.894531, 0.970801, 0.349609, 0.148454, 0.851562 ]
											}
, 											{
												"key" : 164,
												"value" : [ 0, 0.46875, 0.266244, 0.933594, 1.05536, 0.230469 ]
											}
, 											{
												"key" : 165,
												"value" : [ 0, 0.666016, 0.538375, 0.832031, 0.839344, 0.521484, 0.329693, 0.935547 ]
											}
, 											{
												"key" : 166,
												"value" : [ 0, 0.224609, 0.061619, 0.654297 ]
											}
, 											{
												"key" : 167,
												"value" : [ 0, 0.845703, 0.868242, 0.484375, 0.285494, 0.935547, 1.06175, 0.220703 ]
											}
, 											{
												"key" : 168,
												"value" : [ 0, 0.646484 ]
											}
, 											{
												"key" : 169,
												"value" : [ 0, 0.853516, 0.884927, 0.462891, 0.260967, 0.931641 ]
											}
, 											{
												"key" : 170,
												"value" : [ 0, 0.234375, 0.066953, 0.673828, 0.550672, 0.822266, 0.819897, 0.544922 ]
											}
, 											{
												"key" : 171,
												"value" : [ 0, 0.927734, 1.04565, 0.244141, 0.072855, 0.693359 ]
											}
, 											{
												"key" : 172,
												"value" : [ 0, 0.794922, 0.766316, 0.607422, 0.449288, 0.892578, 0.964171, 0.357422 ]
											}
, 											{
												"key" : 173,
												"value" : [ 0, 0.863281, 0.901783, 0.441406 ]
											}
, 											{
												"key" : 174,
												"value" : [ 0, 0.923828, 1.0356, 0.257812, 0.081633, 0.720703, 0.629064, 0.753906 ]
											}
, 											{
												"key" : 175,
												"value" : [ 0, 0.693359, 0.584471, 0.792969, 0.764552, 0.611328 ]
											}
, 											{
												"key" : 176,
												"value" : [ 0, 0.890625, 0.960545, 0.363281, 0.160555, 0.867188, 0.912507, 0.427734 ]
											}
, 											{
												"key" : 177,
												"value" : [ 0, 0.917969, 1.02046, 0.279297, 0.095687, 0.757812 ]
											}
, 											{
												"key" : 178,
												"value" : [ 0, 0.6875, 0.572572, 0.804688, 0.784319, 0.587891, 0.418935, 0.90625 ]
											}
, 											{
												"key" : 179,
												"value" : [ 0, 0.3125, 0.118303, 0.804688 ]
											}
, 											{
												"key" : 180,
												"value" : [ 0, 0.585938, 0.416281, 0.908203, 1.00071, 0.308594, 0.115479, 0.798828 ]
											}
, 											{
												"key" : 181,
												"value" : [ 0, 0.597656, 0.43366, 0.900391, 0.982271, 0.333984 ]
											}
, 											{
												"key" : 182,
												"value" : [ 0, 0.833984, 0.843229, 0.515625, 0.323632, 0.935547, 1.06097, 0.222656 ]
											}
, 											{
												"key" : 183,
												"value" : [ 0, 0.650391, 0.511999, 0.851562 ]
											}
, 											{
												"key" : 184,
												"value" : [ 0, 0.470703, 0.268828, 0.933594, 1.05651, 0.228516, 0.063892, 0.662109 ]
											}
, 											{
												"key" : 185,
												"value" : [ 0, 0.835938, 0.847706, 0.509766 ]
											}
, 											{
												"key" : 186,
												"value" : [ 0, 0.935547, 1.06233, 0.220703, 0.059301, 0.644531, 0.505562, 0.855469 ]
											}
, 											{
												"key" : 187,
												"value" : [ 0, 0.458984, 0.255144, 0.929688, 1.04936, 0.238281 ]
											}
, 											{
												"key" : 188,
												"value" : [ 0, 0.683594, 0.566315, 0.808594, 0.794597, 0.576172, 0.401833, 0.914062 ]
											}
, 											{
												"key" : 189,
												"value" : [ 0, 0.289062, 0.101431, 0.769531 ]
											}
, 											{
												"key" : 190,
												"value" : [ 0, 0.660156, 0.52918, 0.839844, 0.853602, 0.503906, 0.307625, 0.935547 ]
											}
, 											{
												"key" : 191,
												"value" : [ 0, 0.21875, 0.058535, 0.642578, 0.500873, 0.859375 ]
											}
, 											{
												"key" : 192,
												"value" : [ 0, 0.449219, 0.245475, 0.927734, 1.04266, 0.248047, 0.075421, 0.701172 ]
											}
, 											{
												"key" : 193,
												"value" : [ 0, 0.783203, 0.743235, 0.634766 ]
											}
, 											{
												"key" : 194,
												"value" : [ 0, 0.867188, 0.912793, 0.427734, 0.221807, 0.917969, 1.02001, 0.28125 ]
											}
, 											{
												"key" : 195,
												"value" : [ 0, 0.757812, 0.697117, 0.685547 ]
											}
, 											{
												"key" : 196,
												"value" : [ 0, 0.806641, 0.789822, 0.580078, 0.409757, 0.912109, 1.00713, 0.298828 ]
											}
, 											{
												"key" : 197,
												"value" : [ 0, 0.787109, 0.750232, 0.626953 ]
											}
, 											{
												"key" : 198,
												"value" : [ 0, 0.875, 0.929229, 0.40625, 0.199848, 0.904297, 0.990251, 0.322266 ]
											}
, 											{
												"key" : 199,
												"value" : [ 0, 0.820312, 0.814881, 0.550781, 0.368632, 0.925781 ]
											}
, 											{
												"key" : 200,
												"value" : [ 0, 0.251953, 0.07718, 0.707031, 0.606349, 0.775391, 0.727553, 0.652344 ]
											}
, 											{
												"key" : 201,
												"value" : [ 0, 0.849609, 0.873571, 0.478516 ]
											}
, 											{
												"key" : 202,
												"value" : [ 0, 0.935547, 1.05971, 0.224609, 0.061345, 0.652344, 0.517923, 0.847656 ]
											}
, 											{
												"key" : 203,
												"value" : [ 0, 0.482422 ]
											}
, 											{
												"key" : 204,
												"value" : [ 0, 0.935547, 1.06091, 0.222656, 0.060409, 0.650391 ]
											}
, 											{
												"key" : 205,
												"value" : [ 0, 0.851562, 0.879094, 0.470703, 0.269453, 0.933594, 1.05677, 0.228516 ]
											}
, 											{
												"key" : 206,
												"value" : [ 0, 0.662109, 0.531766, 0.837891 ]
											}
, 											{
												"key" : 207,
												"value" : [ 0, 0.507812, 0.313743, 0.935547, 1.06276, 0.220703, 0.058974, 0.644531 ]
											}
, 											{
												"key" : 208,
												"value" : [ 0, 0.857422, 0.891866, 0.455078 ]
											}
, 											{
												"key" : 209,
												"value" : [ 0, 0.929688, 1.04666, 0.242188, 0.072002, 0.691406 ]
											}
, 											{
												"key" : 210,
												"value" : [ 0, 0.798828, 0.774024, 0.599609, 0.436235, 0.898438, 0.979384, 0.337891 ]
											}
, 											{
												"key" : 211,
												"value" : [ 0, 0.837891, 0.853113, 0.503906, 0.308374, 0.935547 ]
											}
, 											{
												"key" : 212,
												"value" : [ 0, 0.21875, 0.058571, 0.642578, 0.501096, 0.859375, 0.895432, 0.449219 ]
											}
, 											{
												"key" : 213,
												"value" : [ 0, 0.927734, 1.04301, 0.248047 ]
											}
, 											{
												"key" : 214,
												"value" : [ 0, 0.701172, 0.595547, 0.783203, 0.745916, 0.630859, 0.484201, 0.871094 ]
											}
, 											{
												"key" : 215,
												"value" : [ 0, 0.417969 ]
											}
, 											{
												"key" : 216,
												"value" : [ 0, 0.912109, 1.00937, 0.294922, 0.106594, 0.78125 ]
											}
, 											{
												"key" : 217,
												"value" : [ 0, 0.636719, 0.49231, 0.865234, 0.907925, 0.433594, 0.228477, 0.919922 ]
											}
, 											{
												"key" : 218,
												"value" : [ 0, 0.271484, 0.089183, 0.740234, 0.66561, 0.716797 ]
											}
, 											{
												"key" : 219,
												"value" : [ 0, 0.757812, 0.696188, 0.685547, 0.57086, 0.804688, 0.787141, 0.583984 ]
											}
, 											{
												"key" : 220,
												"value" : [ 0, 0.910156, 1.00277, 0.304688 ]
											}
, 											{
												"key" : 221,
												"value" : [ 0, 0.794922, 0.767536, 0.607422, 0.447216, 0.892578, 0.966648, 0.355469 ]
											}
, 											{
												"key" : 222,
												"value" : [ 0, 0.859375, 0.89426, 0.451172 ]
											}
, 											{
												"key" : 223,
												"value" : [ 0, 0.927734, 1.04425, 0.246094, 0.074055, 0.697266, 0.589869, 0.789062 ]
											}
, 											{
												"key" : 224,
												"value" : [ 0, 0.621094 ]
											}
, 											{
												"key" : 225,
												"value" : [ 0, 0.880859, 0.941116, 0.388672, 0.184529, 0.890625 ]
											}
, 											{
												"key" : 226,
												"value" : [ 0, 0.359375, 0.156504, 0.863281, 0.902473, 0.441406, 0.236035, 0.923828 ]
											}
, 											{
												"key" : 227,
												"value" : [ 0, 0.259766, 0.082417, 0.722656 ]
											}
, 											{
												"key" : 228,
												"value" : [ 0, 0.75, 0.68165, 0.701172, 0.596404, 0.783203, 0.744466, 0.632812 ]
											}
, 											{
												"key" : 229,
												"value" : [ 0, 0.869141 ]
											}
, 											{
												"key" : 230,
												"value" : [ 0, 0.423828, 0.217811, 0.914062, 1.01525, 0.287109 ]
											}
, 											{
												"key" : 231,
												"value" : [ 0, 0.769531, 0.717102, 0.664062, 0.534221, 0.835938, 0.845816, 0.513672 ]
											}
, 											{
												"key" : 232,
												"value" : [ 0, 0.935547, 1.06182, 0.220703, 0.059698, 0.646484 ]
											}
, 											{
												"key" : 233,
												"value" : [ 0, 0.853516, 0.885438, 0.462891, 0.260229, 0.931641, 1.05233, 0.234375 ]
											}
, 											{
												"key" : 234,
												"value" : [ 0, 0.673828, 0.552534, 0.820312 ]
											}
, 											{
												"key" : 235,
												"value" : [ 0, 0.548828, 0.365342, 0.927734, 1.04274, 0.248047, 0.075349, 0.701172 ]
											}
, 											{
												"key" : 236,
												"value" : [ 0, 0.783203, 0.743884, 0.634766, 0.487705, 0.869141 ]
											}
, 											{
												"key" : 237,
												"value" : [ 0, 0.425781, 0.219693, 0.916016, 1.01753, 0.285156, 0.098521, 0.763672 ]
											}
, 											{
												"key" : 238,
												"value" : [ 0, 0.673828, 0.550855, 0.822266 ]
											}
, 											{
												"key" : 239,
												"value" : [ 0, 0.544922, 0.361012, 0.927734, 1.04538, 0.244141 ]
											}
, 											{
												"key" : 240,
												"value" : [ 0, 0.693359, 0.584682, 0.792969, 0.7642, 0.611328, 0.452886, 0.890625 ]
											}
, 											{
												"key" : 241,
												"value" : [ 0, 0.365234, 0.161433, 0.869141, 0.914629, 0.423828 ]
											}
, 											{
												"key" : 242,
												"value" : [ 0, 0.916016, 1.01707, 0.285156, 0.098967, 0.765625, 0.709512, 0.671875 ]
											}
, 											{
												"key" : 243,
												"value" : [ 0, 0.824219, 0.824961, 0.539062, 0.352431, 0.929688 ]
											}
, 											{
												"key" : 244,
												"value" : [ 0, 0.238281, 0.069104, 0.681641, 0.562808, 0.8125, 0.80032, 0.568359 ]
											}
, 											{
												"key" : 245,
												"value" : [ 0, 0.917969, 1.02282, 0.277344 ]
											}
, 											{
												"key" : 246,
												"value" : [ 0, 0.751953, 0.685115, 0.697266, 0.590313, 0.789062 ]
											}
, 											{
												"key" : 247,
												"value" : [ 0, 0.621094, 0.469024, 0.880859, 0.939453, 0.392578, 0.186642, 0.892578 ]
											}
, 											{
												"key" : 248,
												"value" : [ 0, 0.353516, 0.151884, 0.857422, 0.890523, 0.457031 ]
											}
, 											{
												"key" : 249,
												"value" : [ 0, 0.929688, 1.04794, 0.240234, 0.070922, 0.6875, 0.57288, 0.804688 ]
											}
, 											{
												"key" : 250,
												"value" : [ 0, 0.587891, 0.419784, 0.90625 ]
											}
, 											{
												"key" : 251,
												"value" : [ 0, 0.3125, 0.119223, 0.806641, 0.789226, 0.582031, 0.410748, 0.910156 ]
											}
, 											{
												"key" : 252,
												"value" : [ 0, 0.300781, 0.109836, 0.789062 ]
											}
, 											{
												"key" : 253,
												"value" : [ 0, 0.623047, 0.470203, 0.878906, 0.937917, 0.394531 ]
											}
, 											{
												"key" : 254,
												"value" : [ 0, 0.894531, 0.971413, 0.347656, 0.147745, 0.851562 ]
											}
, 											{
												"key" : 255,
												"value" : [ 0, 0.470703, 0.269085, 0.933594, 1.05661, 0.228516 ]
											}
, 											{
												"key" : 256,
												"value" : [ 0, 0.662109, 0.53249, 0.835938, 0.848498, 0.509766, 0.315469, 0.935547 ]
											}
, 											{
												"key" : 257,
												"value" : [ 0, 0.220703, 0.059156, 0.644531, 0.504681, 0.857422 ]
											}
, 											{
												"key" : 258,
												"value" : [ 0, 0.457031, 0.253307, 0.929688, 1.0482, 0.240234, 0.070708, 0.685547 ]
											}
, 											{
												"key" : 259,
												"value" : [ 0, 0.804688, 0.785748, 0.585938 ]
											}
, 											{
												"key" : 260,
												"value" : [ 0, 0.908203, 1.00044, 0.308594, 0.115758, 0.800781, 0.776585, 0.595703 ]
											}
, 											{
												"key" : 261,
												"value" : [ 0, 0.900391 ]
											}
, 											{
												"key" : 262,
												"value" : [ 0, 0.330078, 0.133241, 0.830078, 0.836496, 0.525391 ]
											}
, 											{
												"key" : 263,
												"value" : [ 0, 0.933594, 1.05795, 0.226562, 0.062743, 0.658203, 0.526239, 0.841797 ]
											}
, 											{
												"key" : 264,
												"value" : [ 0, 0.498047, 0.300755, 0.935547, 1.06346, 0.21875 ]
											}
, 											{
												"key" : 265,
												"value" : [ 0, 0.642578, 0.500241, 0.859375, 0.896661, 0.449219, 0.244192, 0.927734 ]
											}
, 											{
												"key" : 266,
												"value" : [ 0, 0.25, 0.076285, 0.705078 ]
											}
, 											{
												"key" : 267,
												"value" : [ 0, 0.779297, 0.735522, 0.642578, 0.502164, 0.859375, 0.893894, 0.451172 ]
											}
, 											{
												"key" : 268,
												"value" : [ 0, 0.927734, 1.04463, 0.246094 ]
											}
, 											{
												"key" : 269,
												"value" : [ 0, 0.695312, 0.588132, 0.791016, 0.758416, 0.617188, 0.462749, 0.884766 ]
											}
, 											{
												"key" : 270,
												"value" : [ 0, 0.380859, 0.176472, 0.884766, 0.948116, 0.380859 ]
											}
, 											{
												"key" : 271,
												"value" : [ 0, 0.882812, 0.946597, 0.382812, 0.177629, 0.884766, 0.950476, 0.376953 ]
											}
, 											{
												"key" : 272,
												"value" : [ 0, 0.880859, 0.940447, 0.390625 ]
											}
, 											{
												"key" : 273,
												"value" : [ 0, 0.892578, 0.965526, 0.357422, 0.154628, 0.861328, 0.897686, 0.447266 ]
											}
, 											{
												"key" : 274,
												"value" : [ 0, 0.925781, 1.04051, 0.251953 ]
											}
, 											{
												"key" : 275,
												"value" : [ 0, 0.707031, 0.606914, 0.773438, 0.726587, 0.652344, 0.517682, 0.847656 ]
											}
, 											{
												"key" : 276,
												"value" : [ 0, 0.480469, 0.281302, 0.935547 ]
											}
, 											{
												"key" : 277,
												"value" : [ 0, 0.222656, 0.060516, 0.650391, 0.512935, 0.851562, 0.878135, 0.472656 ]
											}
, 											{
												"key" : 278,
												"value" : [ 0, 0.933594, 1.05734, 0.228516, 0.063224, 0.660156 ]
											}
, 											{
												"key" : 279,
												"value" : [ 0, 0.839844, 0.853762, 0.503906, 0.307381, 0.935547, 1.06334, 0.21875 ]
											}
, 											{
												"key" : 280,
												"value" : [ 0, 0.642578 ]
											}
, 											{
												"key" : 281,
												"value" : [ 0, 0.859375, 0.895849, 0.449219, 0.24534, 0.927734 ]
											}
, 											{
												"key" : 282,
												"value" : [ 0, 0.248047, 0.075511, 0.701172, 0.597604, 0.783203, 0.742434, 0.634766 ]
											}
, 											{
												"key" : 283,
												"value" : [ 0, 0.867188, 0.910868, 0.429688, 0.224436, 0.917969 ]
											}
, 											{
												"key" : 284,
												"value" : [ 0, 0.277344, 0.093271, 0.751953, 0.68441, 0.697266, 0.591553, 0.787109 ]
											}
, 											{
												"key" : 285,
												"value" : [ 0, 0.623047, 0.472605, 0.878906 ]
											}
, 											{
												"key" : 286,
												"value" : [ 0, 0.398438, 0.192654, 0.898438, 0.978495, 0.337891 ]
											}
, 											{
												"key" : 287,
												"value" : [ 0, 0.839844, 0.856117, 0.5, 0.303784, 0.935547 ]
											}
, 											{
												"key" : 288,
												"value" : [ 0, 0.21875, 0.058426, 0.642578, 0.500203, 0.859375 ]
											}
, 											{
												"key" : 289,
												"value" : [ 0, 0.447266, 0.244113, 0.927734, 1.0416, 0.25, 0.076338, 0.705078 ]
											}
, 											{
												"key" : 290,
												"value" : [ 0, 0.779297, 0.735043, 0.644531, 0.502994, 0.857422 ]
											}
, 											{
												"key" : 291,
												"value" : [ 0, 0.453125, 0.249816, 0.929688, 1.04584, 0.244141, 0.072695, 0.693359 ]
											}
, 											{
												"key" : 292,
												"value" : [ 0, 0.794922, 0.767761, 0.607422, 0.446834, 0.892578 ]
											}
, 											{
												"key" : 293,
												"value" : [ 0, 0.353516, 0.152772, 0.857422, 0.892861, 0.453125, 0.24958, 0.927734 ]
											}
, 											{
												"key" : 294,
												"value" : [ 0, 0.244141 ]
											}
, 											{
												"key" : 295,
												"value" : [ 0, 0.693359, 0.583312, 0.794922, 0.766489, 0.607422 ]
											}
, 											{
												"key" : 296,
												"value" : [ 0, 0.892578, 0.964524, 0.357422, 0.155813, 0.861328, 0.900721, 0.443359 ]
											}
, 											{
												"key" : 297,
												"value" : [ 0, 0.923828, 1.03692, 0.257812 ]
											}
, 											{
												"key" : 298,
												"value" : [ 0, 0.716797, 0.623143, 0.759766, 0.69869, 0.683594, 0.566467, 0.808594 ]
											}
, 											{
												"key" : 299,
												"value" : [ 0, 0.576172 ]
											}
, 											{
												"key" : 300,
												"value" : [ 0, 0.914062, 1.01418, 0.289062, 0.1018, 0.771484 ]
											}
, 											{
												"key" : 301,
												"value" : [ 0, 0.658203, 0.52648, 0.841797, 0.85774, 0.498047, 0.301315, 0.935547 ]
											}
, 											{
												"key" : 302,
												"value" : [ 0, 0.21875, 0.058425, 0.642578, 0.500196, 0.859375 ]
											}
, 											{
												"key" : 303,
												"value" : [ 0, 0.447266, 0.2441, 0.927734, 1.04159, 0.25, 0.076347, 0.705078 ]
											}
, 											{
												"key" : 304,
												"value" : [ 0, 0.779297, 0.734963, 0.644531 ]
											}
, 											{
												"key" : 305,
												"value" : [ 0, 0.857422, 0.892493, 0.453125, 0.250104, 0.929688, 1.04604, 0.244141 ]
											}
, 											{
												"key" : 306,
												"value" : [ 0, 0.691406, 0.581626, 0.796875, 0.769304, 0.605469 ]
											}
, 											{
												"key" : 307,
												"value" : [ 0, 0.894531, 0.970193, 0.349609, 0.149161, 0.853516, 0.883219, 0.464844 ]
											}
, 											{
												"key" : 308,
												"value" : [ 0, 0.931641, 1.05401, 0.232422 ]
											}
, 											{
												"key" : 309,
												"value" : [ 0, 0.669922, 0.544683, 0.826172, 0.82942, 0.533203, 0.345333, 0.931641 ]
											}
, 											{
												"key" : 310,
												"value" : [ 0, 0.232422, 0.066294, 0.671875 ]
											}
, 											{
												"key" : 311,
												"value" : [ 0, 0.824219, 0.825889, 0.537109, 0.350951, 0.931641, 1.05087, 0.236328 ]
											}
, 											{
												"key" : 312,
												"value" : [ 0, 0.679688, 0.559325, 0.814453, 0.805976, 0.5625 ]
											}
, 											{
												"key" : 313,
												"value" : [ 0, 0.921875, 1.0303, 0.265625, 0.086436, 0.734375, 0.652592, 0.730469 ]
											}
, 											{
												"key" : 314,
												"value" : [ 0, 0.736328, 0.656471, 0.726562 ]
											}
, 											{
												"key" : 315,
												"value" : [ 0, 0.742188, 0.668335, 0.714844, 0.619804, 0.761719, 0.704454, 0.677734 ]
											}
, 											{
												"key" : 316,
												"value" : [ 0, 0.818359, 0.810774, 0.556641, 0.375292, 0.923828 ]
											}
, 											{
												"key" : 317,
												"value" : [ 0, 0.257812, 0.081191, 0.71875, 0.626851, 0.755859, 0.692274, 0.689453 ]
											}
, 											{
												"key" : 318,
												"value" : [ 0, 0.798828 ]
											}
, 											{
												"key" : 319,
												"value" : [ 0, 0.597656, 0.433274, 0.900391, 0.982701, 0.332031 ]
											}
, 											{
												"key" : 320,
												"value" : [ 0, 0.833984, 0.841741, 0.517578, 0.32595, 0.935547, 1.0604, 0.222656 ]
											}
, 											{
												"key" : 321,
												"value" : [ 0, 0.650391, 0.51468, 0.849609, 0.875543, 0.474609 ]
											}
, 											{
												"key" : 322,
												"value" : [ 0, 0.933594, 1.05876, 0.224609, 0.062097, 0.65625, 0.522408, 0.84375 ]
											}
, 											{
												"key" : 323,
												"value" : [ 0, 0.490234 ]
											}
, 											{
												"key" : 324,
												"value" : [ 0, 0.935547, 1.06282, 0.21875, 0.058926, 0.644531 ]
											}
, 											{
												"key" : 325,
												"value" : [ 0, 0.857422, 0.892294, 0.453125, 0.250388, 0.929688, 1.04624, 0.244141 ]
											}
, 											{
												"key" : 326,
												"value" : [ 0, 0.691406, 0.58072, 0.796875, 0.770814, 0.603516 ]
											}
, 											{
												"key" : 327,
												"value" : [ 0, 0.896484, 0.973176, 0.345703, 0.145709, 0.849609, 0.873681, 0.478516 ]
											}
, 											{
												"key" : 328,
												"value" : [ 0, 0.935547, 1.05966, 0.224609 ]
											}
, 											{
												"key" : 329,
												"value" : [ 0, 0.654297, 0.518158, 0.847656, 0.870343, 0.482422 ]
											}
, 											{
												"key" : 330,
												"value" : [ 0, 0.935547, 1.06104, 0.222656, 0.060306, 0.648438, 0.51167, 0.851562 ]
											}
, 											{
												"key" : 331,
												"value" : [ 0, 0.470703, 0.268118, 0.933594, 1.0562, 0.228516 ]
											}
, 											{
												"key" : 332,
												"value" : [ 0, 0.664062, 0.534437, 0.833984, 0.845481, 0.513672, 0.320135, 0.935547 ]
											}
, 											{
												"key" : 333,
												"value" : [ 0, 0.220703, 0.059776, 0.646484 ]
											}
, 											{
												"key" : 334,
												"value" : [ 0, 0.853516, 0.884742, 0.462891, 0.261235, 0.931641, 1.05287, 0.234375 ]
											}
, 											{
												"key" : 335,
												"value" : [ 0, 0.673828 ]
											}
, 											{
												"key" : 336,
												"value" : [ 0, 0.822266, 0.820965, 0.542969, 0.358828, 0.929688 ]
											}
, 											{
												"key" : 337,
												"value" : [ 0, 0.242188, 0.072013, 0.691406, 0.578854, 0.798828, 0.773919, 0.599609 ]
											}
, 											{
												"key" : 338,
												"value" : [ 0, 0.898438, 0.979184, 0.337891 ]
											}
, 											{
												"key" : 339,
												"value" : [ 0, 0.839844, 0.853791, 0.503906, 0.307337, 0.935547, 1.06334, 0.21875 ]
											}
, 											{
												"key" : 340,
												"value" : [ 0, 0.642578 ]
											}
, 											{
												"key" : 341,
												"value" : [ 0, 0.859375, 0.895866, 0.449219, 0.245317, 0.927734 ]
											}
, 											{
												"key" : 342,
												"value" : [ 0, 0.248047, 0.075526, 0.701172, 0.597686, 0.783203, 0.742294, 0.634766 ]
											}
, 											{
												"key" : 343,
												"value" : [ 0, 0.867188, 0.910531, 0.429688, 0.224897, 0.917969 ]
											}
, 											{
												"key" : 344,
												"value" : [ 0, 0.275391, 0.092786, 0.75, 0.682219, 0.701172, 0.595404, 0.785156 ]
											}
, 											{
												"key" : 345,
												"value" : [ 0, 0.630859, 0.483784, 0.871094 ]
											}
, 											{
												"key" : 346,
												"value" : [ 0, 0.417969, 0.212411, 0.912109, 1.00837, 0.296875, 0.107612, 0.783203 ]
											}
, 											{
												"key" : 347,
												"value" : [ 0, 0.632812, 0.485281, 0.869141 ]
											}
, 											{
												"key" : 348,
												"value" : [ 0, 0.419922, 0.21517, 0.914062, 1.01195, 0.292969, 0.104014, 0.775391 ]
											}
, 											{
												"key" : 349,
												"value" : [ 0, 0.648438 ]
											}
, 											{
												"key" : 350,
												"value" : [ 0, 0.853516, 0.881763, 0.466797, 0.265559, 0.933594 ]
											}
, 											{
												"key" : 351,
												"value" : [ 0, 0.230469, 0.065072, 0.666016, 0.539871, 0.830078, 0.837, 0.523438 ]
											}
, 											{
												"key" : 352,
												"value" : [ 0, 0.933594, 1.05821, 0.226562 ]
											}
, 											{
												"key" : 353,
												"value" : [ 0, 0.658203, 0.524987, 0.841797, 0.860018, 0.496094, 0.297858, 0.935547 ]
											}
, 											{
												"key" : 354,
												"value" : [ 0, 0.21875 ]
											}
, 											{
												"key" : 355,
												"value" : [ 0, 0.642578, 0.500754, 0.859375, 0.895925, 0.449219 ]
											}
, 											{
												"key" : 356,
												"value" : [ 0, 0.927734, 1.04247, 0.248047, 0.075582, 0.701172, 0.597981, 0.78125 ]
											}
, 											{
												"key" : 357,
												"value" : [ 0, 0.636719, 0.491311, 0.865234, 0.909325, 0.431641 ]
											}
, 											{
												"key" : 358,
												"value" : [ 0, 0.919922, 1.0253, 0.273438, 0.091088, 0.746094, 0.674454, 0.708984 ]
											}
, 											{
												"key" : 359,
												"value" : [ 0, 0.771484, 0.72293, 0.65625 ]
											}
, 											{
												"key" : 360,
												"value" : [ 0, 0.84375, 0.861441, 0.494141, 0.295706, 0.935547 ]
											}
, 											{
												"key" : 361,
												"value" : [ 0, 0.21875, 0.058627, 0.642578, 0.50144, 0.859375, 0.894937, 0.451172 ]
											}
, 											{
												"key" : 362,
												"value" : [ 0, 0.927734, 1.04354, 0.248047, 0.074667, 0.699219 ]
											}
, 											{
												"key" : 363,
												"value" : [ 0, 0.787109, 0.750001, 0.626953, 0.477171, 0.875, 0.928697, 0.40625 ]
											}
, 											{
												"key" : 364,
												"value" : [ 0, 0.904297, 0.991335, 0.320312, 0.125434, 0.818359 ]
											}
, 											{
												"key" : 365,
												"value" : [ 0, 0.556641, 0.37506, 0.923828, 1.03626, 0.257812, 0.081045, 0.71875 ]
											}
, 											{
												"key" : 366,
												"value" : [ 0, 0.755859 ]
											}
, 											{
												"key" : 367,
												"value" : [ 0, 0.689453, 0.575496, 0.800781, 0.779488, 0.59375 ]
											}
, 											{
												"key" : 368,
												"value" : [ 0, 0.904297, 0.989521, 0.324219, 0.127401, 0.820312, 0.817534, 0.546875 ]
											}
, 											{
												"key" : 369,
												"value" : [ 0, 0.927734, 1.04336, 0.248047, 0.074815, 0.699219 ]
											}
, 											{
												"key" : 370,
												"value" : [ 0, 0.785156, 0.748672, 0.628906, 0.479456, 0.873047, 0.925625, 0.410156 ]
											}
, 											{
												"key" : 371,
												"value" : [ 0, 0.90625 ]
											}
, 											{
												"key" : 372,
												"value" : [ 0, 0.3125, 0.118914, 0.806641, 0.788113, 0.582031 ]
											}
, 											{
												"key" : 373,
												"value" : [ 0, 0.910156, 1.00437, 0.302734, 0.11169, 0.792969, 0.76124, 0.613281 ]
											}
, 											{
												"key" : 374,
												"value" : [ 0, 0.886719, 0.953594, 0.373047 ]
											}
, 											{
												"key" : 375,
												"value" : [ 0, 0.876953, 0.932085, 0.402344, 0.196123, 0.900391, 0.984293, 0.330078 ]
											}
, 											{
												"key" : 376,
												"value" : [ 0, 0.830078 ]
											}
, 											{
												"key" : 377,
												"value" : [ 0, 0.525391, 0.334641, 0.933594, 1.05778, 0.226562 ]
											}
, 											{
												"key" : 378,
												"value" : [ 0, 0.658203, 0.527016, 0.839844, 0.85692, 0.5, 0.302562, 0.935547 ]
											}
, 											{
												"key" : 379,
												"value" : [ 0, 0.21875, 0.058419, 0.642578, 0.500157, 0.859375 ]
											}
, 											{
												"key" : 380,
												"value" : [ 0, 0.447266, 0.244022, 0.927734, 1.04153, 0.25, 0.076401, 0.705078 ]
											}
, 											{
												"key" : 381,
												"value" : [ 0, 0.777344, 0.734485, 0.644531 ]
											}
, 											{
												"key" : 382,
												"value" : [ 0, 0.857422, 0.891294, 0.455078, 0.251815, 0.929688, 1.04721, 0.242188 ]
											}
, 											{
												"key" : 383,
												"value" : [ 0, 0.689453, 0.576245, 0.800781 ]
											}
, 											{
												"key" : 384,
												"value" : [ 0, 0.59375, 0.429119, 0.902344, 0.987268, 0.326172, 0.129863, 0.824219 ]
											}
, 											{
												"key" : 385,
												"value" : [ 0, 0.537109 ]
											}
, 											{
												"key" : 386,
												"value" : [ 0, 0.931641, 1.05068, 0.236328, 0.06864, 0.679688 ]
											}
, 											{
												"key" : 387,
												"value" : [ 0, 0.814453, 0.804547, 0.5625, 0.38545, 0.921875, 1.02848, 0.269531 ]
											}
, 											{
												"key" : 388,
												"value" : [ 0, 0.738281, 0.660597, 0.722656 ]
											}
, 											{
												"key" : 389,
												"value" : [ 0, 0.75, 0.680933, 0.701172, 0.597665, 0.783203, 0.74233, 0.634766 ]
											}
, 											{
												"key" : 390,
												"value" : [ 0, 0.867188 ]
											}
, 											{
												"key" : 391,
												"value" : [ 0, 0.429688, 0.224778, 0.917969, 1.02336, 0.275391 ]
											}
, 											{
												"key" : 392,
												"value" : [ 0, 0.75, 0.682781, 0.699219, 0.594415, 0.785156, 0.74783, 0.628906 ]
											}
, 											{
												"key" : 393,
												"value" : [ 0, 0.873047, 0.923666, 0.412109, 0.207182, 0.908203 ]
											}
, 											{
												"key" : 394,
												"value" : [ 0, 0.306641, 0.114978, 0.798828, 0.773688, 0.599609, 0.436802, 0.898438 ]
											}
, 											{
												"key" : 395,
												"value" : [ 0, 0.337891 ]
											}
, 											{
												"key" : 396,
												"value" : [ 0, 0.839844, 0.855278, 0.501953, 0.305063, 0.935547 ]
											}
, 											{
												"key" : 397,
												"value" : [ 0, 0.21875, 0.058448, 0.642578, 0.500337, 0.859375, 0.896524, 0.449219 ]
											}
, 											{
												"key" : 398,
												"value" : [ 0, 0.927734, 1.04182, 0.25, 0.076152, 0.703125 ]
											}
, 											{
												"key" : 399,
												"value" : [ 0, 0.779297, 0.736704, 0.642578, 0.500115, 0.859375, 0.896842, 0.447266 ]
											}
, 											{
												"key" : 400,
												"value" : [ 0, 0.927734 ]
											}
, 											{
												"key" : 401,
												"value" : [ 0, 0.25, 0.076459, 0.705078, 0.602589, 0.777344 ]
											}
, 											{
												"key" : 402,
												"value" : [ 0, 0.644531, 0.504864, 0.857422, 0.889983, 0.457031, 0.253689, 0.929688 ]
											}
, 											{
												"key" : 403,
												"value" : [ 0, 0.240234, 0.070502, 0.685547, 0.570568, 0.806641 ]
											}
, 											{
												"key" : 404,
												"value" : [ 0, 0.583984, 0.413422, 0.910156, 1.00356, 0.304688, 0.112521, 0.792969 ]
											}
, 											{
												"key" : 405,
												"value" : [ 0, 0.611328 ]
											}
, 											{
												"key" : 406,
												"value" : [ 0, 0.890625, 0.960274, 0.363281, 0.160879, 0.867188 ]
											}
, 											{
												"key" : 407,
												"value" : [ 0, 0.425781, 0.221125, 0.916016, 1.01922, 0.28125, 0.096882, 0.759766 ]
											}
, 											{
												"key" : 408,
												"value" : [ 0, 0.681641, 0.563342, 0.8125 ]
											}
, 											{
												"key" : 409,
												"value" : [ 0, 0.570312, 0.393818, 0.917969, 1.02161, 0.279297, 0.09458, 0.753906 ]
											}
, 											{
												"key" : 410,
												"value" : [ 0, 0.691406 ]
											}
, 											{
												"key" : 411,
												"value" : [ 0, 0.796875, 0.769986, 0.603516, 0.443063, 0.894531 ]
											}
, 											{
												"key" : 412,
												"value" : [ 0, 0.347656, 0.147592, 0.851562, 0.878925, 0.470703, 0.269701, 0.933594 ]
											}
, 											{
												"key" : 413,
												"value" : [ 0, 0.228516, 0.063599, 0.662109, 0.531282, 0.837891 ]
											}
, 											{
												"key" : 414,
												"value" : [ 0, 0.507812, 0.312594, 0.935547, 1.06289, 0.21875, 0.058867, 0.644531 ]
											}
, 											{
												"key" : 415,
												"value" : [ 0, 0.857422, 0.892815, 0.453125 ]
											}
, 											{
												"key" : 416,
												"value" : [ 0, 0.927734, 1.04572, 0.244141, 0.072796, 0.693359, 0.583101, 0.794922 ]
											}
, 											{
												"key" : 417,
												"value" : [ 0, 0.607422, 0.448394, 0.892578 ]
											}
, 											{
												"key" : 418,
												"value" : [ 0, 0.357422, 0.154963, 0.861328, 0.898547, 0.445312, 0.241534, 0.925781 ]
											}
, 											{
												"key" : 419,
												"value" : [ 0, 0.253906, 0.078157, 0.708984, 0.611413, 0.769531 ]
											}
, 											{
												"key" : 420,
												"value" : [ 0, 0.662109, 0.531106, 0.837891, 0.850636, 0.507812, 0.312175, 0.935547 ]
											}
, 											{
												"key" : 421,
												"value" : [ 0, 0.21875, 0.058831, 0.644531 ]
											}
, 											{
												"key" : 422,
												"value" : [ 0, 0.857422, 0.893136, 0.453125, 0.249189, 0.927734, 1.0454, 0.244141 ]
											}
, 											{
												"key" : 423,
												"value" : [ 0, 0.693359, 0.58458, 0.792969 ]
											}
, 											{
												"key" : 424,
												"value" : [ 0, 0.611328, 0.452598, 0.890625, 0.960165, 0.363281, 0.16101, 0.867188 ]
											}
, 											{
												"key" : 425,
												"value" : [ 0, 0.425781, 0.220693, 0.916016, 1.01871, 0.283203 ]
											}
, 											{
												"key" : 426,
												"value" : [ 0, 0.761719, 0.702606, 0.679688, 0.559596, 0.814453, 0.805536, 0.5625 ]
											}
, 											{
												"key" : 427,
												"value" : [ 0, 0.921875 ]
											}
, 											{
												"key" : 428,
												"value" : [ 0, 0.267578, 0.086948, 0.734375, 0.655041, 0.728516 ]
											}
, 											{
												"key" : 429,
												"value" : [ 0, 0.740234, 0.663964, 0.71875, 0.627478, 0.753906, 0.691187, 0.691406 ]
											}
, 											{
												"key" : 430,
												"value" : [ 0, 0.798828, 0.772606, 0.601562, 0.438629, 0.896484 ]
											}
, 											{
												"key" : 431,
												"value" : [ 0, 0.341797, 0.141713, 0.84375, 0.862237, 0.492188, 0.294505, 0.935547 ]
											}
, 											{
												"key" : 432,
												"value" : [ 0, 0.21875 ]
											}
, 											{
												"key" : 433,
												"value" : [ 0, 0.642578, 0.501938, 0.859375, 0.894221, 0.451172 ]
											}
, 											{
												"key" : 434,
												"value" : [ 0, 0.927734, 1.04429, 0.246094, 0.07402, 0.697266, 0.589682, 0.789062 ]
											}
, 											{
												"key" : 435,
												"value" : [ 0, 0.621094, 0.467206, 0.880859 ]
											}
, 											{
												"key" : 436,
												"value" : [ 0, 0.388672, 0.183647, 0.890625, 0.962279, 0.361328, 0.158481, 0.865234 ]
											}
, 											{
												"key" : 437,
												"value" : [ 0, 0.433594 ]
											}
, 											{
												"key" : 438,
												"value" : [ 0, 0.919922, 1.02805, 0.269531, 0.088515, 0.738281 ]
											}
, 											{
												"key" : 439,
												"value" : [ 0, 0.720703, 0.6301, 0.751953, 0.686642, 0.695312, 0.587629, 0.791016 ]
											}
, 											{
												"key" : 440,
												"value" : [ 0, 0.617188, 0.461308, 0.884766, 0.949351, 0.378906 ]
											}
, 											{
												"key" : 441,
												"value" : [ 0, 0.882812, 0.943397, 0.386719, 0.181644, 0.888672, 0.958438, 0.365234 ]
											}
, 											{
												"key" : 442,
												"value" : [ 0, 0.871094, 0.918577, 0.419922 ]
											}
, 											{
												"key" : 443,
												"value" : [ 0, 0.912109, 1.01042, 0.294922, 0.105543, 0.779297, 0.736974, 0.642578 ]
											}
, 											{
												"key" : 444,
												"value" : [ 0, 0.859375, 0.897512, 0.447266 ]
											}
, 											{
												"key" : 445,
												"value" : [ 0, 0.925781, 1.04071, 0.251953, 0.077116, 0.707031, 0.606016, 0.775391 ]
											}
, 											{
												"key" : 446,
												"value" : [ 0, 0.652344 ]
											}
, 											{
												"key" : 447,
												"value" : [ 0, 0.849609, 0.875046, 0.476562, 0.275398, 0.933594 ]
											}
, 											{
												"key" : 448,
												"value" : [ 0, 0.224609, 0.061899, 0.65625, 0.521231, 0.845703, 0.865715, 0.488281 ]
											}
, 											{
												"key" : 449,
												"value" : [ 0, 0.935547, 1.06244, 0.220703, 0.05922, 0.644531 ]
											}
, 											{
												"key" : 450,
												"value" : [ 0, 0.857422, 0.889684, 0.457031, 0.254118, 0.929688, 1.04872, 0.240234 ]
											}
, 											{
												"key" : 451,
												"value" : [ 0, 0.685547, 0.569299, 0.806641 ]
											}
, 											{
												"key" : 452,
												"value" : [ 0, 0.582031, 0.409949, 0.912109, 1.00695, 0.298828, 0.109049, 0.787109 ]
											}
, 											{
												"key" : 453,
												"value" : [ 0, 0.625, 0.475497, 0.876953, 0.930933, 0.402344 ]
											}
, 											{
												"key" : 454,
												"value" : [ 0, 0.902344, 0.986725, 0.328125, 0.130459, 0.826172, 0.827591, 0.535156 ]
											}
, 											{
												"key" : 455,
												"value" : [ 0, 0.931641, 1.05219, 0.234375, 0.067392, 0.675781 ]
											}
, 											{
												"key" : 456,
												"value" : [ 0, 0.820312, 0.815899, 0.548828, 0.366986, 0.927734, 1.0417, 0.25 ]
											}
, 											{
												"key" : 457,
												"value" : [ 0, 0.703125 ]
											}
, 											{
												"key" : 458,
												"value" : [ 0, 0.779297, 0.735816, 0.642578, 0.501655, 0.859375 ]
											}
, 											{
												"key" : 459,
												"value" : [ 0, 0.451172, 0.247069, 0.927734, 1.04386, 0.246094, 0.074386, 0.699219 ]
											}
, 											{
												"key" : 460,
												"value" : [ 0, 0.787109, 0.75252, 0.625, 0.472845, 0.876953 ]
											}
, 											{
												"key" : 461,
												"value" : [ 0, 0.398438, 0.193063, 0.898438, 0.979192, 0.337891, 0.13885, 0.839844 ]
											}
, 											{
												"key" : 462,
												"value" : [ 0, 0.503906 ]
											}
, 											{
												"key" : 463,
												"value" : [ 0, 0.935547, 1.06334, 0.21875, 0.058524, 0.642578 ]
											}
, 											{
												"key" : 464,
												"value" : [ 0, 0.859375, 0.895852, 0.449219, 0.245336, 0.927734, 1.04255, 0.248047 ]
											}
, 											{
												"key" : 465,
												"value" : [ 0, 0.701172, 0.597617, 0.783203, 0.742412, 0.634766 ]
											}
, 											{
												"key" : 466,
												"value" : [ 0, 0.867188, 0.910815, 0.429688, 0.224508, 0.917969, 1.02307, 0.277344 ]
											}
, 											{
												"key" : 467,
												"value" : [ 0, 0.75, 0.684065, 0.699219 ]
											}
, 											{
												"key" : 468,
												"value" : [ 0, 0.787109, 0.751638, 0.625, 0.474359, 0.876953, 0.932445, 0.400391 ]
											}
, 											{
												"key" : 469,
												"value" : [ 0, 0.900391, 0.983527, 0.332031 ]
											}
, 											{
												"key" : 470,
												"value" : [ 0, 0.832031, 0.838867, 0.521484, 0.330441, 0.935547, 1.05914, 0.224609 ]
											}
, 											{
												"key" : 471,
												"value" : [ 0, 0.654297 ]
											}
, 											{
												"key" : 472,
												"value" : [ 0, 0.845703, 0.866654, 0.486328, 0.287867, 0.935547 ]
											}
, 											{
												"key" : 473,
												"value" : [ 0, 0.220703, 0.059403, 0.646484, 0.506184, 0.855469, 0.888062, 0.458984 ]
											}
, 											{
												"key" : 474,
												"value" : [ 0, 0.929688, 1.05016, 0.238281, 0.069072, 0.681641 ]
											}
, 											{
												"key" : 475,
												"value" : [ 0, 0.8125, 0.80061, 0.568359, 0.391912, 0.917969, 1.02322, 0.275391 ]
											}
, 											{
												"key" : 476,
												"value" : [ 0, 0.75 ]
											}
, 											{
												"key" : 477,
												"value" : [ 0, 0.699219, 0.593335, 0.787109, 0.749655, 0.626953 ]
											}
, 											{
												"key" : 478,
												"value" : [ 0, 0.875, 0.927899, 0.40625, 0.201592, 0.904297, 0.992946, 0.318359 ]
											}
, 											{
												"key" : 479,
												"value" : [ 0, 0.814453, 0.804974, 0.5625 ]
											}
, 											{
												"key" : 480,
												"value" : [ 0, 0.921875, 1.02903, 0.267578, 0.087609, 0.736328, 0.65819, 0.724609 ]
											}
, 											{
												"key" : 481,
												"value" : [ 0, 0.746094 ]
											}
, 											{
												"key" : 482,
												"value" : [ 0, 0.708984, 0.610577, 0.771484, 0.720318, 0.660156 ]
											}
, 											{
												"key" : 483,
												"value" : [ 0, 0.839844, 0.854482, 0.501953, 0.30628, 0.935547, 1.06339, 0.21875 ]
											}
, 											{
												"key" : 484,
												"value" : [ 0, 0.642578, 0.500548, 0.859375 ]
											}
, 											{
												"key" : 485,
												"value" : [ 0, 0.449219, 0.244813, 0.927734, 1.04215, 0.25, 0.075863, 0.703125 ]
											}
, 											{
												"key" : 486,
												"value" : [ 0, 0.78125, 0.739283, 0.638672 ]
											}
, 											{
												"key" : 487,
												"value" : [ 0, 0.863281, 0.903208, 0.439453, 0.23501, 0.923828 ]
											}
, 											{
												"key" : 488,
												"value" : [ 0, 0.261719, 0.083271, 0.724609, 0.637198, 0.746094, 0.674303, 0.708984 ]
											}
, 											{
												"key" : 489,
												"value" : [ 0, 0.771484, 0.722474, 0.658203, 0.524846, 0.841797 ]
											}
, 											{
												"key" : 490,
												"value" : [ 0, 0.494141, 0.297534, 0.935547, 1.06333, 0.21875, 0.05853, 0.642578 ]
											}
, 											{
												"key" : 491,
												"value" : [ 0, 0.859375, 0.8958, 0.449219 ]
											}
, 											{
												"key" : 492,
												"value" : [ 0, 0.927734, 1.04261, 0.248047, 0.075465, 0.701172, 0.597362, 0.783203 ]
											}
, 											{
												"key" : 493,
												"value" : [ 0, 0.634766 ]
											}
, 											{
												"key" : 494,
												"value" : [ 0, 0.867188, 0.911852, 0.427734, 0.22309, 0.917969 ]
											}
, 											{
												"key" : 495,
												"value" : [ 0, 0.279297, 0.09471, 0.753906, 0.690871, 0.691406, 0.580199, 0.796875 ]
											}
, 											{
												"key" : 496,
												"value" : [ 0, 0.601562, 0.440193, 0.896484, 0.974872, 0.34375 ]
											}
, 											{
												"key" : 497,
												"value" : [ 0, 0.845703, 0.868157, 0.484375, 0.28562, 0.935547, 1.06177, 0.220703 ]
											}
, 											{
												"key" : 498,
												"value" : [ 0, 0.646484, 0.508206, 0.853516 ]
											}
, 											{
												"key" : 499,
												"value" : [ 0, 0.462891, 0.260708, 0.931641, 1.05259, 0.234375, 0.067067, 0.673828 ]
											}
, 											{
												"key" : 500,
												"value" : [ 0, 0.822266, 0.818858, 0.546875 ]
											}
, 											{
												"key" : 501,
												"value" : [ 0, 0.927734, 1.04466, 0.246094, 0.0737, 0.695312, 0.587965, 0.791016 ]
											}
, 											{
												"key" : 502,
												"value" : [ 0, 0.617188, 0.462271, 0.884766 ]
											}
, 											{
												"key" : 503,
												"value" : [ 0, 0.380859, 0.175717, 0.882812, 0.946559, 0.382812, 0.177676, 0.884766 ]
											}
, 											{
												"key" : 504,
												"value" : [ 0, 0.376953, 0.172691, 0.880859, 0.940191, 0.390625 ]
											}
, 											{
												"key" : 505,
												"value" : [ 0, 0.892578, 0.966129, 0.355469, 0.153917, 0.859375, 0.895849, 0.449219 ]
											}
, 											{
												"key" : 506,
												"value" : [ 0, 0.927734, 1.04256, 0.248047 ]
											}
, 											{
												"key" : 507,
												"value" : [ 0, 0.701172, 0.597604, 0.783203, 0.742434, 0.634766, 0.490208, 0.867188 ]
											}
, 											{
												"key" : 508,
												"value" : [ 0, 0.429688, 0.224436, 0.917969 ]
											}
, 											{
												"key" : 509,
												"value" : [ 0, 0.277344, 0.09327, 0.751953, 0.684407, 0.697266, 0.591558, 0.787109 ]
											}
, 											{
												"key" : 510,
												"value" : [ 0, 0.623047, 0.472619, 0.878906 ]
											}
, 											{
												"key" : 511,
												"value" : [ 0, 0.398438, 0.192678, 0.898438, 0.978535, 0.337891, 0.139591, 0.839844 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 598.0, 238.5, 59.5, 19.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 547.0, 300.5, 47.0, 19.0 ],
									"text" : "zl rot -1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 547.0, 431.5, 206.0, 19.0 ],
									"text" : "o.expr /midi = scale(/pitch\\, 0\\, 1\\, 60\\, 80)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 547.0, 326.5, 105.0, 19.0 ],
									"text" : "o.pack /offset /pitch"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 598.0, 274.5, 54.0, 19.0 ],
									"text" : "zl delace"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 143.5, 344.5, 68.0, 19.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 275.5, 7.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-49",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 547.0, 753.5, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-76", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-76", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 333.5, 296.5, 134.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p scale-pitch-and-timetag"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 333.5, 266.0, 71.0, 19.0 ],
					"text" : "o.route /play"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 246.0, 456.0, 31.0 ],
									"text" : "o.expr map( lambda(a){ if( value(quote(/oil/clicks) + a) != value(quote(/prev/oil/clicks) + a)\\, assign( quote(/play/oil) + a\\, value(quote(/oil/level) + a)) )\\; }\\, /oils)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-61",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 207.0, 456.0, 31.0 ],
									"text" : "o.expr map( lambda(a){ if( value(quote(/bell/clicks) + a) != value(quote(/prev/bell/clicks) + a)\\, assign( quote(/play/bell) + a\\, value(quote(/bell/level) + a)) )\\; }\\, /bells)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 170.0, 47.0, 19.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 78.0, 135.0, 88.0, 19.0 ],
									"text" : "o.prepend /prev"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 36.5, 82.0, 32.5, 19.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 36.5, 22.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 337.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-50", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-61", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 333.5, 194.0, 116.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p play-when-changed"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 329.0, 328.0, 19.0 ],
									"text" : "o.expr /oil/clicks/snp = /data[[14]]\\; /oil/level/snp = /data[[15]]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 300.0, 317.0, 19.0 ],
									"text" : "o.expr /oil/clicks/bp = /data[[12]]\\; /oil/level/bp = /data[[13]]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 269.0, 334.0, 19.0 ],
									"text" : "o.expr /oil/clicks/xom = /data[[10]]\\; /oil/level/xom = /data[[11]]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 243.0, 311.0, 19.0 ],
									"text" : "o.expr /oil/clicks/rds = /data[[8]]\\; /oil/level/rds = /data[[9]]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 209.0, 335.0, 19.0 ],
									"text" : "o.expr /bell/clicks/reyk = /data[[6]]\\; /bell/level/reyk = /data[[7]]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 182.0, 316.0, 19.0 ],
									"text" : "o.expr /bell/clicks/ve = /data[[4]]\\; /bell/level/ve = /data[[5]]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 156.0, 348.0, 19.0 ],
									"text" : "o.expr /bell/clicks/ganm = /data[[2]]\\; /bell/level/ganm = /data[[3]]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 130.0, 306.0, 19.0 ],
									"text" : "o.expr /bell/clicks/kerg = /data[[0]]\\; /bell/level/kerg = /data[[1]]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 208.0, 19.0 ],
									"text" : "o.expr /data = int32(split(quote( )\\, /data))"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 408.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 333.5, 165.0, 56.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p re-label"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 499.5, 54.5, 56.0, 19.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-58",
					"linecount" : 2,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 499.5, 83.0, 175.0, 32.0 ],
					"text" : "/bells \"/kerg\" \"/ganm\" \"/ve\" \"/reyk\"\n/oils \"/rds\" \"/xom\" \"/bp\" \"/snp\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 333.5, 137.0, 185.0, 19.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-52",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.5, 303.0, 238.0, 19.0 ],
					"text" : "/bell/kerg 338",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 333.5, 108.0, 56.0, 19.0 ],
					"text" : "o.change"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 333.5, 82.0, 139.0, 19.0 ],
					"text" : "udpreceive 12000 CNMAT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 529.5, 318.0, 50.0, 17.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 529.5, 347.0, 50.0, 19.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 606.0, 337.0, 145.0, 29.0 ],
					"text" : "mode melody, micromode 0, size 1280 400"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 606.0, 310.0, 56.0, 19.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 10.0, 44.0, 1335.0, 876.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 119.0, 360.0, 34.0, 19.0 ],
									"text" : "sel 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 119.0, 387.0, 69.0, 17.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 44.0, 360.0, 34.0, 19.0 ],
									"text" : "sel 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-28",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 387.0, 69.0, 17.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 108.0, 148.0, 69.0, 17.0 ],
									"text" : "0, 127 6000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 107.0, 169.0, 46.0, 19.0 ],
									"text" : "line"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.0, 148.0, 69.0, 17.0 ],
									"text" : "0, 127 6000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 24.0, 169.0, 46.0, 19.0 ],
									"text" : "line"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 44.0, 61.0, 115.0, 19.0 ],
									"text" : "o.route /timer /phrase"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 44.0, 102.0, 100.0, 19.0 ],
									"text" : "o.route /1 /2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 214.0, 20.0, 140.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 349.0, 1280.0, 14.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 87.0, 214.0, 20.0, 140.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 789.0, 1280.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 197.0, 118.0, 17.0 ],
									"text" : "bgcolor 0.85 0.86 1. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 319.5, 158.0, 95.0, 17.0 ],
									"text" : "bgcolor 1. 1. 1. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 279.0, 128.0, 100.0, 19.0 ],
									"text" : "t l b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 524.0, 190.0, 118.0, 17.0 ],
									"text" : "bgcolor 0.85 0.86 1. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 483.5, 151.0, 95.0, 17.0 ],
									"text" : "bgcolor 1. 1. 1. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 443.0, 121.0, 100.0, 19.0 ],
									"text" : "t l b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 279.0, 81.0, 100.0, 19.0 ],
									"text" : "o.route /1 /2"
								}

							}
, 							{
								"box" : 								{
									"filename" : "jsNotation.js",
									"id" : "obj-1",
									"maxclass" : "jsui",
									"nofsaa" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 90.5, 504.0, 1280.0, 400.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 448.0, 1280.0, 400.0 ]
								}

							}
, 							{
								"box" : 								{
									"filename" : "jsNotation.js",
									"id" : "obj-68",
									"maxclass" : "jsui",
									"nofsaa" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 430.0, 1280.0, 400.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 16.0, 1280.0, 400.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 19.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 360.0, 276.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.5, 10.0, 1298.0, 417.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.85, 0.86, 1.0, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 508.5, 276.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.5, 439.5, 1298.0, 417.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 333.5, 403.0, 47.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p score"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jsNotation.js",
				"bootpath" : "/Users/rama/Documents/__CNMAT/cnmat-git/CNMAT-MMJ-Depot/patchers/display_and_notation/jsNotation",
				"patcherrelativepath" : "../../../__CNMAT/cnmat-git/CNMAT-MMJ-Depot/patchers/display_and_notation/jsNotation",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.change.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.atomize.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
