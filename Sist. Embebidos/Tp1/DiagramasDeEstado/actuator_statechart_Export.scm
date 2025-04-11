{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event ev_led_on\n    in event ev_led_off\n    in event ev_led_blink\n\ninternal:\n    const DEL_LED_BLINK:integer = 3\n    var tick:integer = DEL_LED_BLINK"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -180,
          "y": -400
        },
        "size": {
          "width": 610,
          "height": 280
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "08991315-6b14-4554-82dd-a50c8319dc0f",
        "z": 55,
        "embeds": [
          "62668aec-6b09-4e5e-8b4c-a4d6f3a09ba6"
        ],
        "attrs": {
          "name": {
            "text": "ST_LED_BLINK",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -179,
          "y": -378.203125
        },
        "size": {
          "width": 608,
          "height": 257.203125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "62668aec-6b09-4e5e-8b4c-a4d6f3a09ba6",
        "z": 79,
        "embeds": [
          "4f9bac74-93a5-4757-88e5-549fccd569e6",
          "e33f0fa1-6a57-483c-9d73-2d7b5bcdb0c5",
          "e7e18be1-ebe4-4fa5-ba54-cac978798b14",
          "cb7073d0-f6df-4991-a0c8-c8ed312d9a2c",
          "fad56f84-dbb0-45c4-9cc6-ae05ca49c9a2",
          "8cfcef87-94aa-4018-bbda-4c1832d3f7d6"
        ],
        "parent": "08991315-6b14-4554-82dd-a50c8319dc0f",
        "attrs": {
          "name": {
            "text": "ev_led_blink"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 401,
          "y": -295
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "cb7073d0-f6df-4991-a0c8-c8ed312d9a2c",
        "z": 80,
        "embeds": [
          "ecfdc6fa-e654-479f-9b54-c39a339c4fc1"
        ],
        "parent": "62668aec-6b09-4e5e-8b4c-a4d6f3a09ba6",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 246.40625,
          "y": -295
        },
        "size": {
          "height": 60,
          "width": 121.703125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "fad56f84-dbb0-45c4-9cc6-ae05ca49c9a2",
        "z": 81,
        "embeds": [
          "6f44942e-0303-4b0e-9f35-0bb8875fd078"
        ],
        "parent": "62668aec-6b09-4e5e-8b4c-a4d6f3a09ba6",
        "attrs": {
          "name": {
            "text": "ST_LED_OFF",
            "fontSize": 12
          },
          "specification": {
            "text": "entry/tick--"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -121.703125,
          "y": -295
        },
        "size": {
          "width": 121.703125,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8cfcef87-94aa-4018-bbda-4c1832d3f7d6",
        "z": 82,
        "embeds": [
          "3e692193-909f-402a-8a29-406da93f80fa"
        ],
        "parent": "62668aec-6b09-4e5e-8b4c-a4d6f3a09ba6",
        "attrs": {
          "name": {
            "text": "ST_LED_ON",
            "fontSize": 12
          },
          "specification": {
            "text": "entry/tick--"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 401,
          "y": -280
        },
        "id": "ecfdc6fa-e654-479f-9b54-c39a339c4fc1",
        "z": 86,
        "parent": "cb7073d0-f6df-4991-a0c8-c8ed312d9a2c",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "8cfcef87-94aa-4018-bbda-4c1832d3f7d6"
        },
        "target": {
          "id": "fad56f84-dbb0-45c4-9cc6-ae05ca49c9a2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 21,
              "dy": 50,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[tick==0] / tick=DEL_LED_BLINK"
              }
            },
            "position": {
              "distance": 0.499999992859715,
              "offset": -4.999999237060543,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e33f0fa1-6a57-483c-9d73-2d7b5bcdb0c5",
        "z": 87,
        "vertices": [],
        "parent": "62668aec-6b09-4e5e-8b4c-a4d6f3a09ba6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fad56f84-dbb0-45c4-9cc6-ae05ca49c9a2"
        },
        "target": {
          "id": "8cfcef87-94aa-4018-bbda-4c1832d3f7d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 108,
              "dy": 22,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[tick==0] / tick=DEL_LED_BLINK"
              }
            },
            "position": {
              "distance": 0.4941860465116279,
              "offset": 9,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4f9bac74-93a5-4757-88e5-549fccd569e6",
        "z": 87,
        "vertices": [],
        "parent": "62668aec-6b09-4e5e-8b4c-a4d6f3a09ba6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cb7073d0-f6df-4991-a0c8-c8ed312d9a2c"
        },
        "target": {
          "id": "fad56f84-dbb0-45c4-9cc6-ae05ca49c9a2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 95.296875,
              "dy": 16.796875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e7e18be1-ebe4-4fa5-ba54-cac978798b14",
        "z": 87,
        "vertices": [],
        "parent": "62668aec-6b09-4e5e-8b4c-a4d6f3a09ba6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fad56f84-dbb0-45c4-9cc6-ae05ca49c9a2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80,
              "dy": 38,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "fad56f84-dbb0-45c4-9cc6-ae05ca49c9a2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 67,
              "dy": 43,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[tick>0]"
              }
            },
            "position": {
              "distance": 0.6346812414920083,
              "offset": -15.149646698693065,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6f44942e-0303-4b0e-9f35-0bb8875fd078",
        "z": 87,
        "vertices": [
          {
            "x": 399,
            "y": -240.3984375
          },
          {
            "x": 346,
            "y": -188.3984375
          }
        ],
        "parent": "fad56f84-dbb0-45c4-9cc6-ae05ca49c9a2",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8cfcef87-94aa-4018-bbda-4c1832d3f7d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20,
              "dy": 40,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "8cfcef87-94aa-4018-bbda-4c1832d3f7d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 50,
              "dy": 55,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[tick>0]"
              }
            },
            "position": {
              "distance": 0.6037926588267799,
              "offset": 15,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "3e692193-909f-402a-8a29-406da93f80fa",
        "z": 88,
        "vertices": [
          {
            "x": -152.703125,
            "y": -255
          },
          {
            "x": -124.703125,
            "y": -183
          }
        ],
        "parent": "8cfcef87-94aa-4018-bbda-4c1832d3f7d6",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 310,
          "y": -551
        },
        "size": {
          "height": 61,
          "width": 120
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "63f7c7ac-84d8-4576-9b18-9df8399a85ec",
        "z": 104,
        "attrs": {
          "name": {
            "text": "ST_LED_ON",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -180,
          "y": -550.5
        },
        "size": {
          "height": 60,
          "width": 120
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "9aa0498f-e81a-47d8-9210-56222d9cb8b4",
        "z": 106,
        "attrs": {
          "name": {
            "text": "ST_LED_OFF",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "63f7c7ac-84d8-4576-9b18-9df8399a85ec"
        },
        "target": {
          "id": "9aa0498f-e81a-47d8-9210-56222d9cb8b4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 73.609375,
              "dy": 45.900421142578125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_led_off"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e7a01d11-c302-4f10-b893-fa662800b09a",
        "z": 107,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9aa0498f-e81a-47d8-9210-56222d9cb8b4"
        },
        "target": {
          "id": "63f7c7ac-84d8-4576-9b18-9df8399a85ec",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 33.609375,
              "dy": 16.900436401367188,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_led_on"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c7f32968-72df-4843-b299-4f58c2bccdc6",
        "z": 107,
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -240,
          "y": -520
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "7879240e-4d89-45a3-b0f1-b1b30331fac6",
        "z": 117,
        "embeds": [
          "7136653b-40dc-41af-bcfe-b3cb98e7c144"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -240,
          "y": -505
        },
        "id": "7136653b-40dc-41af-bcfe-b3cb98e7c144",
        "z": 118,
        "parent": "7879240e-4d89-45a3-b0f1-b1b30331fac6",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "7879240e-4d89-45a3-b0f1-b1b30331fac6"
        },
        "target": {
          "id": "9aa0498f-e81a-47d8-9210-56222d9cb8b4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 60,
              "dy": 36.400421142578125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2b48626d-7f62-49de-83f3-c8cca0620fa3",
        "z": 119,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9aa0498f-e81a-47d8-9210-56222d9cb8b4"
        },
        "target": {
          "id": "08991315-6b14-4554-82dd-a50c8319dc0f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 50,
              "dy": 15.900421142578125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_led_blink"
              }
            },
            "position": {
              "offset": 55,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "cbfddd4c-5742-44ef-817b-dec4d497ae1b",
        "z": 120,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "63f7c7ac-84d8-4576-9b18-9df8399a85ec"
        },
        "target": {
          "id": "08991315-6b14-4554-82dd-a50c8319dc0f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 550,
              "dy": 15.900421142578125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_led_blink"
              }
            },
            "position": {
              "offset": -45,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8977d852-3245-4a20-a7b8-5ec3434b52f0",
        "z": 121,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8cfcef87-94aa-4018-bbda-4c1832d3f7d6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.703125,
              "dy": 10.8963623046875,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "9aa0498f-e81a-47d8-9210-56222d9cb8b4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90,
              "dy": 26.40045166015625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_led_off"
              }
            },
            "position": {
              "distance": 0.7557544757033248,
              "offset": 45,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a9bcc0a5-9da8-4563-8c3e-3589383a0f05",
        "z": 125,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fad56f84-dbb0-45c4-9cc6-ae05ca49c9a2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 93.59375,
              "dy": 35,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "63f7c7ac-84d8-4576-9b18-9df8399a85ec",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 30,
              "dy": 36.90045166015625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_led_on"
              }
            },
            "position": {
              "distance": 0.7564102564102564,
              "offset": -45,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "59d2ff51-b7a8-45a6-a351-4865406ed628",
        "z": 126,
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "Blinking",
          "statemachinePrefix": "blinking",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}