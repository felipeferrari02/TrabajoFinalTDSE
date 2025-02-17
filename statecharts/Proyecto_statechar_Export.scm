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
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "Proyecto_statechar Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_SYS_01_SWITCH_OFF\n    in event EV_SYS_01_SWITCH_ON\n    in event EV_SYS_01_ENCENDIDO\n    in event EV_SYS_01_INFRARROJA\n    in event EV_SYS_01_EGRESO\n    in event EV_SYS_01_NEXT\n    in event EV_SYS_01_ENTER\n    \n    var tick: integer\n    const MAX_ACTIVACION = 3\n    var del_sys_01_activacion: integer = MAX_ACTIVACION\n    const MAX_PERMANENCIA = 2\n    var del_sys_01_permanencia: integer = MAX_PERMANENCIA\n    \n    \n\n"
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
          "x": 168.7890625,
          "y": 202
        },
        "size": {
          "height": 60,
          "width": 122.421875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 7,
        "attrs": {
          "name": {
            "text": "ST_SYS_01_APAGADO"
          }
        }
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
        "z": 8,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 168.7890625,
          "y": 516
        },
        "size": {
          "height": 60,
          "width": 122.421875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "11dc6be4-213d-47f0-9406-b790273c1c76",
        "z": 25,
        "embeds": [
          "ca709a1a-a604-488e-88a9-f2b86e98ee5e"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_WAITING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 150.78125,
          "y": 705
        },
        "size": {
          "height": 60,
          "width": 158.4375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "71b50ed2-f587-4591-9436-4e2570a3589e",
        "z": 31,
        "embeds": [
          "95805122-b28b-4812-84fc-24520922b3cb"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_WAITINGBALLS"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 0.2218780517578125,
              "dy": 4,
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
                "text": "EV_SYS_01_SWITCH_OFF"
              }
            },
            "position": {
              "distance": 0.49676919752567583,
              "offset": -84,
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
        "id": "8624642a-fe11-456b-abf0-7d00a065f686",
        "z": 33,
        "vertices": [
          {
            "x": -58,
            "y": 517
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 590,
          "y": 202
        },
        "size": {
          "height": 60,
          "width": 194.4375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3571ddd2-c775-421c-a143-963d79f3c324",
        "z": 39,
        "attrs": {
          "name": {
            "text": "ST_SYS_01_EXCEDE_ACTIVACION"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76"
        },
        "target": {
          "id": "3571ddd2-c775-421c-a143-963d79f3c324",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 86,
              "dy": 65.9954833984375,
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
                "text": "[tick == 0]"
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
        "id": "47df8b67-e953-42f3-9329-eccd431fcf13",
        "z": 40,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 567,
          "y": 705
        },
        "size": {
          "height": 60,
          "width": 201.640625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1c4317a2-a600-4555-9b9c-8259e1c79271",
        "z": 45,
        "attrs": {
          "name": {
            "text": "ST_SYS_01_EXCEDE_PERMANENCIA"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "71b50ed2-f587-4591-9436-4e2570a3589e"
        },
        "target": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 25.2109375,
              "dy": 51,
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
                "text": "EV_SYS_01_EGRESO\n/tick=del_sys_01_activacion"
              }
            },
            "position": {
              "distance": 0.5077519379844961,
              "offset": -112,
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
        "id": "e8cad945-633e-4cdd-917a-42c5edcf5190",
        "z": 47,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "71b50ed2-f587-4591-9436-4e2570a3589e"
        },
        "target": {
          "id": "71b50ed2-f587-4591-9436-4e2570a3589e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 37.21875,
              "dy": 45,
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
                "text": "[tick > 0]\n/tick--"
              }
            },
            "position": {
              "distance": 0.48185622184214255,
              "offset": -34,
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
        "id": "95805122-b28b-4812-84fc-24520922b3cb",
        "z": 48,
        "parent": "71b50ed2-f587-4591-9436-4e2570a3589e",
        "vertices": [
          {
            "x": 272,
            "y": 837
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "71b50ed2-f587-4591-9436-4e2570a3589e"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 19.221878051757812,
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
                "text": "EV_SYS_01_SWITCH_OFF"
              }
            },
            "position": {
              "distance": 0.5000000045472816,
              "offset": -88,
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
        "id": "ea854cc2-323e-405c-ab07-98fb33ea2593",
        "z": 49,
        "vertices": [
          {
            "x": -258,
            "y": 706
          },
          {
            "x": -75,
            "y": 167
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3571ddd2-c775-421c-a143-963d79f3c324"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 86.22187805175781,
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
                "text": "EV_SYS_01_SWITCH_OFF"
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
        "id": "abe8458f-8b2b-490c-97eb-7984f1dcdbc1",
        "z": 50,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1c4317a2-a600-4555-9b9c-8259e1c79271"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 101.22187805175781,
              "dy": 24,
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
                "text": "EV_SYS_01_SWITCH_OFF"
              }
            },
            "position": {
              "distance": 0.6062315190377298,
              "offset": 24.933425903320312,
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
        "id": "8f7f5555-6fb9-4dc1-bbf7-042f9361de8f",
        "z": 51,
        "vertices": [
          {
            "x": 818,
            "y": 735
          },
          {
            "x": 876,
            "y": 715
          },
          {
            "x": 876,
            "y": 323
          },
          {
            "x": 819,
            "y": 71
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76"
        },
        "target": {
          "id": "71b50ed2-f587-4591-9436-4e2570a3589e"
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
                "text": "EV_SYS_01_INFRARROJA\n/tick = del_sys_01_permanencia"
              }
            },
            "position": {
              "offset": -124,
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
        "id": "32906fc7-24f4-4888-b7d5-a6e34be5fce4",
        "z": 52,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76"
        },
        "target": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 1.2218780517578125,
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
                "text": "[tick > 0]\n/tick--"
              }
            },
            "position": {
              "distance": 0.5077830249000147,
              "offset": -38.43125355748886,
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
        "id": "ca709a1a-a604-488e-88a9-f2b86e98ee5e",
        "z": 53,
        "parent": "11dc6be4-213d-47f0-9406-b790273c1c76",
        "vertices": [
          {
            "x": 24,
            "y": 576
          },
          {
            "x": 71,
            "y": 556
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "71b50ed2-f587-4591-9436-4e2570a3589e"
        },
        "target": {
          "id": "1c4317a2-a600-4555-9b9c-8259e1c79271",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 25.0040283203125,
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
                "text": "[tick == 0]"
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
        "id": "724f3074-f568-4d2e-aeb1-b30a4ce475bf",
        "z": 111,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 168.7890625,
          "y": 366
        },
        "size": {
          "height": 60,
          "width": 122.421875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "9cf0716b-e6e6-4080-a932-9a14444487c7",
        "z": 151,
        "attrs": {
          "name": {
            "text": "ST_SYS_01_STANDBY"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "9cf0716b-e6e6-4080-a932-9a14444487c7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 61.22187805175781,
              "dy": 12,
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
                "text": "EV_SYS_01_SWITCH_ON"
              }
            },
            "position": {
              "distance": 0.35436893203883496,
              "offset": -91.00000976562501,
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
        "id": "5f772b06-0fdd-49c6-a9b4-dc2d7bc127d2",
        "z": 152,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9cf0716b-e6e6-4080-a932-9a14444487c7"
        },
        "target": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76"
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
                "text": "EV_SYS_01_ENCENDIDO\n/tick=del_sys_01_activacion"
              }
            },
            "position": {
              "distance": 0.48837213201837226,
              "offset": -105,
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
        "id": "ec26864d-361b-46f2-83eb-b78110e2bce2",
        "z": 152,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9cf0716b-e6e6-4080-a932-9a14444487c7"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 12.221878051757812,
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
                "text": "EV_SYS_01_SWITCH_OFF"
              }
            },
            "position": {
              "distance": 0.5184285696784494,
              "offset": -81,
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
        "id": "9512625e-670f-46b4-9f2a-da50658e6190",
        "z": 152,
        "vertices": [
          {
            "x": 104,
            "y": 386
          },
          {
            "x": 104,
            "y": 259
          },
          {
            "x": 134,
            "y": 242
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1035,
          "y": 815
        },
        "size": {
          "height": 68,
          "width": 145
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b2ec8ad3-3aa6-4821-97ea-6953a0aa7a10",
        "z": 226,
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_EXIT_SETUP"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "b2ec8ad3-3aa6-4821-97ea-6953a0aa7a10"
        },
        "target": {
          "id": "9cf0716b-e6e6-4080-a932-9a14444487c7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90.22219848632812,
              "dy": 42,
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
                "text": "EV_SYS_01_ENTER"
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
        "id": "f4c268c3-71e7-4486-bde4-0b16d1bb9784",
        "z": 227,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1592.765625,
          "y": 789.40625
        },
        "size": {
          "width": 187.234375,
          "height": 93.59375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "53ea2107-a4bf-4f90-be28-19c1928a6d8e",
        "z": 228,
        "embeds": [
          "861b480c-0972-4e4e-af30-e07bdc2db27c",
          "a8700fb7-e3e3-417d-bed5-bbf98241d765"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_ACTIVACION_SETUP"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "53ea2107-a4bf-4f90-be28-19c1928a6d8e"
        },
        "target": {
          "id": "b2ec8ad3-3aa6-4821-97ea-6953a0aa7a10",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 68.796875,
              "dy": 28.0643310546875,
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
                "text": "EV_SYS_01_NEXT"
              }
            },
            "position": {
              "distance": 0.4623529052734375,
              "offset": -55.00004882812482,
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
        "id": "fca39d09-6010-445e-b400-01011cdeea0d",
        "z": 229,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "53ea2107-a4bf-4f90-be28-19c1928a6d8e"
        },
        "target": {
          "id": "53ea2107-a4bf-4f90-be28-19c1928a6d8e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 101.3984375,
              "dy": 7.064361572265625,
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
                "text": "EV_SYS_01_ENTER\n[del_sys_01_activacion == MAX_ACTIVACION]\n/del_sys_01_activacion = 0"
              }
            },
            "position": {
              "distance": 0.7637677026156625,
              "offset": -290.54814687387284,
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
        "id": "a8700fb7-e3e3-417d-bed5-bbf98241d765",
        "z": 229,
        "parent": "53ea2107-a4bf-4f90-be28-19c1928a6d8e",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "53ea2107-a4bf-4f90-be28-19c1928a6d8e"
        },
        "target": {
          "id": "53ea2107-a4bf-4f90-be28-19c1928a6d8e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 183.3984375,
              "dy": 22.0643310546875,
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
                "text": "EV_SYS_01_ENTER\n[del_sys_01_activacion < MAX_ACTIVACION]\n/del_sys_01_activacion++"
              }
            },
            "position": {
              "distance": 0.4252793144185952,
              "offset": 169.91337376922147,
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
        "id": "861b480c-0972-4e4e-af30-e07bdc2db27c",
        "z": 230,
        "vertices": [
          {
            "x": 1845.1640625,
            "y": 839.40625
          }
        ],
        "parent": "53ea2107-a4bf-4f90-be28-19c1928a6d8e",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1501,
          "y": 130
        },
        "size": {
          "width": 207,
          "height": 97.59375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "aa3052f0-0430-48f8-bcef-83c2c9190582",
        "z": 231,
        "embeds": [
          "77aa1062-5bdf-47da-84e4-5b09a845ccd0",
          "ad8d201f-3de7-431a-9288-9d83b0ba5032"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_PERMANENCIA_SETUP"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "9cf0716b-e6e6-4080-a932-9a14444487c7"
        },
        "target": {
          "id": "aa3052f0-0430-48f8-bcef-83c2c9190582",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 36,
              "dy": 62.59375,
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
                "text": "EV_SYS_01_ENTER"
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
        "id": "15d451c5-9454-4e29-999e-2b8277020c5a",
        "z": 232,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b2ec8ad3-3aa6-4821-97ea-6953a0aa7a10"
        },
        "target": {
          "id": "aa3052f0-0430-48f8-bcef-83c2c9190582",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 14.0196533203125,
              "dy": 52.764404296875,
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
                "text": "EV_SYS_01_NEXT"
              }
            },
            "position": {
              "distance": 0.6301249909007617,
              "offset": -78,
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
        "id": "b5252d1f-c608-4ddc-a299-a757611cd48a",
        "z": 232,
        "vertices": [
          {
            "x": 1152,
            "y": 180.0646875
          },
          {
            "x": 1337,
            "y": 180.0646875
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "aa3052f0-0430-48f8-bcef-83c2c9190582"
        },
        "target": {
          "id": "53ea2107-a4bf-4f90-be28-19c1928a6d8e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 79.3984375,
              "dy": 9.064361572265625,
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
                "text": "EV_SYS_01_NEXT"
              }
            },
            "position": {
              "offset": -66,
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
        "id": "adb18a73-f0e0-474d-b86e-bd47f83f2eb1",
        "z": 232,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "aa3052f0-0430-48f8-bcef-83c2c9190582"
        },
        "target": {
          "id": "aa3052f0-0430-48f8-bcef-83c2c9190582",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 179,
              "dy": 1,
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
                "text": "EV_SYS_01_ENTER\n[del_sys_01_activacion < MAX_PERMANENCIA]\n/del_sys_01_permanencia++"
              }
            },
            "position": {
              "distance": 0.9447747952582815,
              "offset": -175.48046875,
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
        "id": "ad8d201f-3de7-431a-9288-9d83b0ba5032",
        "z": 232,
        "parent": "aa3052f0-0430-48f8-bcef-83c2c9190582",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "aa3052f0-0430-48f8-bcef-83c2c9190582"
        },
        "target": {
          "id": "aa3052f0-0430-48f8-bcef-83c2c9190582",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 15,
              "dy": 12,
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
                "text": "EV_SYS_01_ENTER\n[del_sys_01_activacion == MAX_PERMANENCIA]\n/del_sys_01_permanencia = 0"
              }
            },
            "position": {
              "distance": 0.9610906864741569,
              "offset": 171.3140000479832,
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
        "id": "77aa1062-5bdf-47da-84e4-5b09a845ccd0",
        "z": 233,
        "parent": "aa3052f0-0430-48f8-bcef-83c2c9190582",
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
          "moduleName": "Travasgratiszonasur",
          "statemachinePrefix": "travasgratiszonasur",
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
