{
  "modelId": "9bbce986-3d0a-4a7d-ad8a-b1c89dcf7eff",
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
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "sensor_statechart Export Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n    var tick: integer\n\ninterface:\n    in event up\n    in event down\n    \n"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 222.5,
          "y": 130
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 2,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
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
          "x": 222.5,
          "y": 145
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 3,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 479,
          "y": 197
        },
        "size": {
          "height": 60,
          "width": 97
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b2074d85-08c9-4695-9f67-62889c670822",
        "z": 22,
        "embeds": [
          "79739a91-d1a9-473d-88d3-308a9992d675",
          "f7fafa55-0094-478b-9b74-4e37d4fd3d22"
        ],
        "attrs": {
          "name": {
            "text": "ST_FALL"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 329,
          "y": 358
        },
        "size": {
          "height": 60,
          "width": 157.421875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 38,
        "embeds": [
          "b128062b-3a37-4736-9bba-bed4682d5af2"
        ],
        "attrs": {
          "name": {
            "text": "ST_DOWN"
          },
          "specification": {
            "text": "entry / tick = 60"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 102,
          "y": 197
        },
        "size": {
          "height": 60,
          "width": 164.625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 40,
        "embeds": [
          "6bb98cb7-dec1-408f-81ad-a17642304730"
        ],
        "attrs": {
          "name": {
            "text": "ST_UP"
          },
          "specification": {
            "text": "entry / tick = 60"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "b2074d85-08c9-4695-9f67-62889c670822"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 44,
              "dy": 16,
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
                "text": "up[tick ==0]"
              }
            },
            "position": {
              "distance": 0.49453551912568305,
              "offset": 16,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "ef667491-faa0-4d2b-ae87-a986cffd2a1f",
        "z": 41,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
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
              "root": {
                "opacity": 1
              },
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
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 41,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "b2074d85-08c9-4695-9f67-62889c670822",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 22,
              "dy": 40,
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
                "text": "down"
              }
            },
            "position": {
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "f4fdd1fd-fc69-42a9-a51b-34aeb2fd7fe4",
        "z": 41,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 28,
              "dy": 58,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 22,
              "dy": 26,
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
                "text": "up"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "6bb98cb7-dec1-408f-81ad-a17642304730",
        "z": 42,
        "parent": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "vertices": [
          {
            "x": 78,
            "y": 278
          }
        ],
        "attrs": {
          "line": {
            "strokeWidth": 4
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 33,
              "dy": 47,
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
                "text": "down"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "b128062b-3a37-4736-9bba-bed4682d5af2",
        "z": 43,
        "parent": "db372094-acc6-467b-b44d-495606208445",
        "vertices": [
          {
            "x": 313,
            "y": 433
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 10,
          "y": 295
        },
        "size": {
          "height": 100,
          "width": 104.125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "f8f760fe-57d2-49fe-a16f-8d417160fca6",
        "z": 57,
        "embeds": [
          "e7b2779d-3fac-4155-83ed-84925b675bf9",
          "e9863baa-218d-41f1-9908-dab1fb1e1992"
        ],
        "attrs": {
          "name": {
            "text": "ST_RAISE"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "f8f760fe-57d2-49fe-a16f-8d417160fca6"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 12,
              "dy": 19,
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
                "text": "down[tick ==0]\n"
              }
            },
            "position": {
              "distance": 0.33098591549295775,
              "offset": 16,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "1b448936-ddd3-414e-9572-33f7bcfa59ad",
        "z": 58,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f8f760fe-57d2-49fe-a16f-8d417160fca6"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 85,
              "dy": 56,
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
                "text": " up[tick ==0]"
              }
            },
            "position": {
              "distance": 0.7955584869622265,
              "offset": 43.998443603515625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "420276a9-ea34-4f2f-8401-2e99c6a991ff",
        "z": 58,
        "vertices": [
          {
            "x": 187,
            "y": 325
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f8f760fe-57d2-49fe-a16f-8d417160fca6"
        },
        "target": {
          "id": "f8f760fe-57d2-49fe-a16f-8d417160fca6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 6.5,
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
                "text": "up[tick >0]/tick --"
              }
            },
            "position": {
              "distance": 0.5323261788811076,
              "offset": 77.14699172973633,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "e9863baa-218d-41f1-9908-dab1fb1e1992",
        "z": 58,
        "parent": "f8f760fe-57d2-49fe-a16f-8d417160fca6",
        "vertices": [
          {
            "x": -87,
            "y": 296
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b2074d85-08c9-4695-9f67-62889c670822"
        },
        "target": {
          "id": "b2074d85-08c9-4695-9f67-62889c670822",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 57,
              "dy": 16,
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
                "text": "up[tick >0]/ tick --"
              }
            },
            "position": {
              "distance": 0.33473129234565524,
              "offset": 86,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4"
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
        "id": "f7fafa55-0094-478b-9b74-4e37d4fd3d22",
        "z": 59,
        "parent": "b2074d85-08c9-4695-9f67-62889c670822",
        "vertices": [
          {
            "x": 556,
            "y": 139
          },
          {
            "x": 536,
            "y": 162
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b2074d85-08c9-4695-9f67-62889c670822"
        },
        "target": {
          "id": "b2074d85-08c9-4695-9f67-62889c670822",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 85,
              "dy": 40,
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
                "text": "down [tick > 0] / tick --"
              }
            },
            "position": {
              "distance": 0.5412428955048069,
              "offset": 19.208871680630974,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "79739a91-d1a9-473d-88d3-308a9992d675",
        "z": 60,
        "parent": "b2074d85-08c9-4695-9f67-62889c670822",
        "vertices": [
          {
            "x": 672,
            "y": 294
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "f8f760fe-57d2-49fe-a16f-8d417160fca6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 51.5,
              "dy": 54,
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
                "text": "up"
              }
            },
            "position": {
              "distance": 0.5563380281690141,
              "offset": 19,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "b6134a29-8c05-44b0-b242-512289a8034e",
        "z": 64,
        "vertices": [
          {
            "x": 343,
            "y": 349
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b2074d85-08c9-4695-9f67-62889c670822",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31,
              "dy": 64,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31,
              "dy": 7,
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
                "text": "down [tick == 0]"
              }
            },
            "position": {
              "distance": 0.2790009925617937,
              "offset": -19.112319946289062,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
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
        "id": "4907321a-a79b-4111-9223-2a2d4864730b",
        "z": 65,
        "vertices": [
          {
            "x": 417,
            "y": 303
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f8f760fe-57d2-49fe-a16f-8d417160fca6"
        },
        "target": {
          "id": "f8f760fe-57d2-49fe-a16f-8d417160fca6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 85,
              "dy": 95,
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
                "text": "down [tick >0]/ tick --"
              }
            },
            "position": {
              "distance": 0.5000000043744902,
              "offset": 24,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4"
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
        "id": "e7b2779d-3fac-4155-83ed-84925b675bf9",
        "z": 66,
        "parent": "f8f760fe-57d2-49fe-a16f-8d417160fca6",
        "vertices": [
          {
            "x": 62.06,
            "y": 458
          }
        ],
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
          "moduleName": "SensorStatechartExport",
          "statemachinePrefix": "sensorStatechartExport",
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