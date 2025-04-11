{
  "graph": {
    "cells": [
      {
        "position": {
          "x": -117,
          "y": -59.5
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "e231e707-a282-46eb-b836-0e0cdfcbdfba",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "SYS_01_STATECHART Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface SENSOR_PRESENCIA: \n    in event EV_SYS_01_HAY_AUTO\n    in event EV_SYS_01_NO_HAY_AUTO\n\ninterface BT_01:\n    in event EV_SYS_01_BT_01_UP\n    in event EV_SYS_01_BT_01_DOWN\n    \ninterface SENSOR_BARRERA:\n    in event EV_SYS_01_BARRERA_ALTA\n    in event EV_SYS_01_BARRERA_BAJA\n    \ninterface BARRERA:\n    out event OP_SUBIR_BARRERA\n    out event OP_FRENAR_BARRERA\n    out event OP_BAJAR_BARRERA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -354.75,
          "y": -1661
        },
        "size": {
          "width": 223.25,
          "height": 79
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "310282be-e568-4e43-9f51-41bfd1b55c8e",
        "z": 421,
        "embeds": [
          "0ff3b3f0-9cbf-494b-9a58-4570ddc23a0b"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_HAY_AUTO_BARRERA_BAJA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -338.9921875,
          "y": -1529
        },
        "size": {
          "width": 251.046875,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3bc8ff74-e991-456e-81f8-966b7fa8c903",
        "z": 423,
        "embeds": [
          "94f01b5a-0cfb-458e-b9d4-17a2832dfe05"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_BARRERA_SUBIENDO"
          },
          "specification": {
            "text": "entry / \nraise BARRERA.OP_SUBIR_BARRERA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -328.1953125,
          "y": -1398
        },
        "size": {
          "width": 258.25,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c72d3ce3-b84a-49ac-946a-0eac20885156",
        "z": 424,
        "embeds": [
          "711371e1-0b00-41ed-a821-397f9fe7cd84"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_BARRERA_ALTA "
          },
          "specification": {
            "text": "entry / \nraise BARRERA.OP_FRENAR_BARRERA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -830.390625,
          "y": -1398
        },
        "size": {
          "width": 251.046875,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502",
        "z": 427,
        "embeds": [
          "c19c775c-7ff4-484a-aef3-7fbde878665d"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_BARRERA_BAJANDO"
          },
          "specification": {
            "text": "entry / \nraise BARRERA.OP_BAJAR_BARRERA"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "310282be-e568-4e43-9f51-41bfd1b55c8e"
        },
        "target": {
          "id": "3bc8ff74-e991-456e-81f8-966b7fa8c903",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 100.00396728515625,
              "dy": 19.065185546875,
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
                "text": "BT_01.EV_SYS_01_BT_01_DOWN"
              }
            },
            "position": {
              "distance": 0.42452830188679247,
              "offset": -102.99999450683595,
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
        "id": "8aaac526-ffc8-4568-84f4-d6418ab9d042",
        "z": 431,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3bc8ff74-e991-456e-81f8-966b7fa8c903"
        },
        "target": {
          "id": "c72d3ce3-b84a-49ac-946a-0eac20885156",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80.21090698242188,
              "dy": 13.065185546875,
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
                "text": "SENSOR_BARRERA.EV_SYS_01_BARRERA_ALTA"
              }
            },
            "position": {
              "distance": 0.5704225352112676,
              "offset": -137.0000042724609,
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
        "id": "be86cb07-a034-42c2-a8cd-908ec8007311",
        "z": 432,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c72d3ce3-b84a-49ac-946a-0eac20885156"
        },
        "target": {
          "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 172.40625,
              "dy": 37,
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
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
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
        "id": "b8ac91a4-f24b-44fe-9508-264f1624fefe",
        "z": 433,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -952,
          "y": -1630.5
        },
        "size": {
          "width": 21,
          "height": 21
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "62ebf6c1-6714-4cee-8860-e843a9397fb0",
        "z": 438,
        "embeds": [
          "fac470fc-8d10-42f6-8e55-8929168d96cb"
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
          "x": -949,
          "y": -1615.5
        },
        "id": "fac470fc-8d10-42f6-8e55-8929168d96cb",
        "z": 439,
        "parent": "62ebf6c1-6714-4cee-8860-e843a9397fb0",
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
          "x": -854.375,
          "y": -1661
        },
        "size": {
          "width": 258.25,
          "height": 112.59375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
        "z": 443,
        "embeds": [
          "c35d003e-ce77-4567-a416-9e3be3302c6f"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_NO_HAY_AUTO_BARRERA_BAJA"
          },
          "specification": {
            "text": "entry / \nraise BARRERA.OP_FRENAR_BARRERA"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90.40625,
              "dy": 7,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 112,
              "dy": 58,
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
                "text": "SENSOR_BARRERA.EV_SYS_01_BARRERA_BAJA"
              }
            },
            "position": {
              "distance": 0.4670544199869029,
              "offset": -137.00109017290816,
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
        "id": "961836d9-0819-4034-a8aa-f9ff4f883254",
        "z": 444,
        "vertices": [
          {
            "x": -739.98,
            "y": -1499
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "310282be-e568-4e43-9f51-41bfd1b55c8e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.8262939453125,
              "dy": 17,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 218,
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
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.5072373126388144,
              "offset": 11,
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
        "id": "5cf0c8aa-2f67-44bf-8c93-667e918a65a4",
        "z": 444,
        "vertices": [
          {
            "x": -470,
            "y": -1644
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "62ebf6c1-6714-4cee-8860-e843a9397fb0"
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 5.75,
              "dy": 45.0684814453125,
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
        "id": "078aecd6-60b3-4f06-a0c0-5174b73b78c6",
        "z": 444,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5"
        },
        "target": {
          "id": "310282be-e568-4e43-9f51-41bfd1b55c8e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 1.8262939453125,
              "dy": 70,
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
                "text": "SENSOR_PRESENCIA.EV_SYS_01_HAY_AUTO"
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
        "id": "30a5f938-29f4-420a-9fe4-8b2e6661c6d8",
        "z": 444,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5"
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 19.75,
              "dy": 34.0684814453125,
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
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.1950673017027838,
              "offset": 15.000000000000227,
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
        "id": "c35d003e-ce77-4567-a416-9e3be3302c6f",
        "z": 444,
        "parent": "77b738eb-5aa7-43fa-aed4-106595811bf5",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "310282be-e568-4e43-9f51-41bfd1b55c8e"
        },
        "target": {
          "id": "310282be-e568-4e43-9f51-41bfd1b55c8e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 196.75,
              "dy": 5,
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
                "text": "BT_01.EV_SYS_01_BT_01_UP"
              }
            },
            "position": {}
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
        "id": "0ff3b3f0-9cbf-494b-9a58-4570ddc23a0b",
        "z": 445,
        "parent": "310282be-e568-4e43-9f51-41bfd1b55c8e",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3bc8ff74-e991-456e-81f8-966b7fa8c903"
        },
        "target": {
          "id": "3bc8ff74-e991-456e-81f8-966b7fa8c903",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 179.9921875,
              "dy": 31,
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
                "text": "SENSOR_PRESENCIA.EV_SYS_01_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.9233565347467172,
              "offset": 96.43114460398621,
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
        "id": "94f01b5a-0cfb-458e-b9d4-17a2832dfe05",
        "z": 446,
        "parent": "3bc8ff74-e991-456e-81f8-966b7fa8c903",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c72d3ce3-b84a-49ac-946a-0eac20885156"
        },
        "target": {
          "id": "c72d3ce3-b84a-49ac-946a-0eac20885156",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 159.1953125,
              "dy": 30,
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
                "text": "SENSOR_PRESENCIA.EV_SYS_01_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.8886020796835432,
              "offset": -130.64035034179688,
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
        "id": "711371e1-0b00-41ed-a821-397f9fe7cd84",
        "z": 447,
        "vertices": [],
        "parent": "c72d3ce3-b84a-49ac-946a-0eac20885156",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3bc8ff74-e991-456e-81f8-966b7fa8c903"
        },
        "target": {
          "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 164.390625,
              "dy": 10,
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
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.37751360227313363,
              "offset": -6,
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
        "id": "0ac74109-beea-413a-b50d-b1666d1512b6",
        "z": 448,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502"
        },
        "target": {
          "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 29.390625,
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
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.576179124905519,
              "offset": -16.39404296875,
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
        "id": "c19c775c-7ff4-484a-aef3-7fbde878665d",
        "z": 449,
        "parent": "d1482c8e-44b1-4b61-bedb-0acf4e068502",
        "vertices": [],
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
          "moduleName": "LightSwitch",
          "statemachinePrefix": "lightSwitch",
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