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
            "text": "Proyecto_statechar Export Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_SYS_01_SWITCH_OFF\n    in event EV_SYS_01_SWITCH_ON\n    in event EV_SYS_01_ENCENDIDO\n    in event EV_SYS_01_INFRARROJA\n    in event EV_SYS_01_EGRESO\n    in event EV_SYS_01_ENTER\n    in event EV_MENU_ENTER\n    in event EV_MENU_NEXT\n    out event EV_MENU_START\n    out event EV_SYS_01_UNBLOCK\n    \n    var tick: integer\n    const MAX_ACTIVACION: integer = 3\n    var del_sys_01_activacion: integer = MAX_ACTIVACION\n    const MAX_PERMANENCIA: integer = 2\n    var del_sys_01_permanencia: integer = MAX_PERMANENCIA\n    \n    \n\n"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 907,
          "y": 122
        },
        "size": {
          "width": 1108,
          "height": 931
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "29f5b351-0046-4a92-a83a-beab1b0630fa",
        "z": 402,
        "embeds": [
          "fca39d09-6010-445e-b400-01011cdeea0d",
          "140a4cd6-67c5-4340-8c91-c9cbe4fa1caf",
          "b5252d1f-c608-4ddc-a299-a757611cd48a",
          "baf3f831-a998-488d-9d8c-d5c4c343190f",
          "adb18a73-f0e0-474d-b86e-bd47f83f2eb1",
          "06fa64b2-8c43-44ec-9857-39c9a30afdcf",
          "a5c54c8f-9e13-4aa9-bff7-b4ccf9da7640",
          "aa3052f0-0430-48f8-bcef-83c2c9190582",
          "53ea2107-a4bf-4f90-be28-19c1928a6d8e",
          "4ce6b324-ce30-43b0-b6dd-c021322dbe98",
          "b2ec8ad3-3aa6-4821-97ea-6953a0aa7a10"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "task_menu"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1413.390625,
          "y": 316
        },
        "size": {
          "width": 115.21875,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a5c54c8f-9e13-4aa9-bff7-b4ccf9da7640",
        "z": 420,
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_ESPERA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1480,
          "y": 512.203125
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
        "z": 422,
        "embeds": [
          "77aa1062-5bdf-47da-84e4-5b09a845ccd0",
          "ad8d201f-3de7-431a-9288-9d83b0ba5032"
        ],
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_PERMANENCIA_SETUP"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "a5c54c8f-9e13-4aa9-bff7-b4ccf9da7640"
        },
        "target": {
          "id": "aa3052f0-0430-48f8-bcef-83c2c9190582",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 105,
              "dy": 28,
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
                "text": "EV_MENU_START"
              }
            },
            "position": {
              "distance": 0.2514450867052023,
              "offset": -52,
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
        "id": "06fa64b2-8c43-44ec-9857-39c9a30afdcf",
        "z": 423,
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
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
                "text": "EV_MENU_ENTER\n[del_sys_01_permanencia == MAX_PERMANENCIA]\n/del_sys_01_permanencia = 0"
              }
            },
            "position": {
              "distance": 0.7256829188524179,
              "offset": 109.43932480170668,
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
        "z": 423,
        "parent": "aa3052f0-0430-48f8-bcef-83c2c9190582",
        "vertices": [
          {
            "x": 1523,
            "y": 485.203125
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
                "text": "EV_MENU_ENTER\n[del_sys_01_permanencia < MAX_PERMANENCIA]\n/del_sys_01_permanencia++"
              }
            },
            "position": {
              "distance": 0.6712087062882496,
              "offset": -165.05988072077125,
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
        "z": 424,
        "parent": "aa3052f0-0430-48f8-bcef-83c2c9190582",
        "vertices": [
          {
            "x": 1646,
            "y": 486.203125
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1489.8828125,
          "y": 874.40625
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
        "z": 425,
        "embeds": [
          "861b480c-0972-4e4e-af30-e07bdc2db27c",
          "a8700fb7-e3e3-417d-bed5-bbf98241d765"
        ],
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_ACTIVACION_SETUP"
          }
        }
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
                "text": "EV_MENU_NEXT"
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
        "z": 426,
        "vertices": [],
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
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
                "text": "EV_MENU_ENTER\n[del_sys_01_activacion < MAX_ACTIVACION]\n/del_sys_01_activacion++"
              }
            },
            "position": {
              "distance": 0.4916785020592752,
              "offset": 149.93176269531273,
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
        "z": 426,
        "vertices": [
          {
            "x": 1724.1171875,
            "y": 944.90625
          }
        ],
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
                "text": "EV_MENU_ENTER\n[del_sys_01_activacion == MAX_ACTIVACION]\n/del_sys_01_activacion = 0"
              }
            },
            "position": {
              "distance": 0.21691991546282727,
              "offset": 163.84015588044198,
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
        "z": 427,
        "parent": "53ea2107-a4bf-4f90-be28-19c1928a6d8e",
        "vertices": [
          {
            "x": 1664,
            "y": 835
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": 1462,
          "y": 218.5
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
        "id": "4ce6b324-ce30-43b0-b6dd-c021322dbe98",
        "z": 428,
        "embeds": [
          "20096ff9-14c2-459b-8587-b0fc0ce195d4"
        ],
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
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
          "x": 1462,
          "y": 233.5
        },
        "id": "20096ff9-14c2-459b-8587-b0fc0ce195d4",
        "z": 429,
        "parent": "4ce6b324-ce30-43b0-b6dd-c021322dbe98",
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
        "type": "Transition",
        "source": {
          "id": "4ce6b324-ce30-43b0-b6dd-c021322dbe98"
        },
        "target": {
          "id": "a5c54c8f-9e13-4aa9-bff7-b4ccf9da7640",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 60.1187744140625,
              "dy": 17,
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
        "id": "baf3f831-a998-488d-9d8c-d5c4c343190f",
        "z": 430,
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1231,
          "y": 900
        },
        "size": {
          "width": 145,
          "height": 68
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b2ec8ad3-3aa6-4821-97ea-6953a0aa7a10",
        "z": 431,
        "embeds": [],
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_EXIT_SETUP"
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
                "text": "EV_MENU_NEXT"
              }
            },
            "position": {
              "distance": 0.5050053115807214,
              "offset": -18.000058593750055,
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
        "z": 432,
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b2ec8ad3-3aa6-4821-97ea-6953a0aa7a10"
        },
        "target": {
          "id": "a5c54c8f-9e13-4aa9-bff7-b4ccf9da7640",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 25.1187744140625,
              "dy": 39,
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
                "text": "EV_MENU_ENTER \n/raise EV_SYS_01_UNBLOCK"
              }
            },
            "position": {
              "distance": 0.5164569457018462,
              "offset": -100,
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
        "id": "140a4cd6-67c5-4340-8c91-c9cbe4fa1caf",
        "z": 432,
        "vertices": [
          {
            "x": 1160,
            "y": 949
          }
        ],
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
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
                "text": "EV_MENU_NEXT"
              }
            },
            "position": {
              "distance": 0.4691722170557083,
              "offset": 44.052734375,
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
        "z": 432,
        "vertices": [
          {
            "x": 1304,
            "y": 630
          }
        ],
        "parent": "29f5b351-0046-4a92-a83a-beab1b0630fa",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -664,
          "y": 190
        },
        "size": {
          "width": 1552,
          "height": 836
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "z": 435,
        "embeds": [
          "ca709a1a-a604-488e-88a9-f2b86e98ee5e",
          "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
          "724f3074-f568-4d2e-aeb1-b30a4ce475bf",
          "8f7f5555-6fb9-4dc1-bbf7-042f9361de8f",
          "47df8b67-e953-42f3-9329-eccd431fcf13",
          "abe8458f-8b2b-490c-97eb-7984f1dcdbc1",
          "456b93ea-4445-4071-b13a-b02d1945d9c8",
          "8afd8e74-744f-4829-aa3e-20054141f887",
          "5f772b06-0fdd-49c6-a9b4-dc2d7bc127d2",
          "9512625e-670f-46b4-9f2a-da50658e6190",
          "ec26864d-361b-46f2-83eb-b78110e2bce2",
          "e8cad945-633e-4cdd-917a-42c5edcf5190",
          "8624642a-fe11-456b-abf0-7d00a065f686",
          "ea854cc2-323e-405c-ab07-98fb33ea2593",
          "36b8548a-74b1-4925-ae23-291c03231ee6",
          "71b50ed2-f587-4591-9436-4e2570a3589e",
          "11dc6be4-213d-47f0-9406-b790273c1c76",
          "9cf0716b-e6e6-4080-a932-9a14444487c7",
          "818982fb-707c-497a-b82d-a25bf2f6862d",
          "3571ddd2-c775-421c-a143-963d79f3c324",
          "1c4317a2-a600-4555-9b9c-8259e1c79271",
          "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        ],
        "attrs": {
          "priority": {
            "text": 2
          },
          "name": {
            "text": "task_system"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 130.7890625,
          "y": 302
        },
        "size": {
          "width": 122.421875,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 436,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_APAGADO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 112.78125,
          "y": 857
        },
        "size": {
          "width": 158.4375,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "71b50ed2-f587-4591-9436-4e2570a3589e",
        "z": 437,
        "embeds": [
          "95805122-b28b-4812-84fc-24520922b3cb"
        ],
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_WAITINGBALLS"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 112.78125,
          "y": 729
        },
        "size": {
          "width": 122.421875,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "11dc6be4-213d-47f0-9406-b790273c1c76",
        "z": 438,
        "embeds": [
          "32906fc7-24f4-4888-b7d5-a6e34be5fce4"
        ],
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_WAITING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 112.78125,
          "y": 532
        },
        "size": {
          "width": 122.421875,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "9cf0716b-e6e6-4080-a932-9a14444487c7",
        "z": 439,
        "embeds": [],
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_STANDBY"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 370,
          "y": 532
        },
        "size": {
          "width": 122.421875,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "818982fb-707c-497a-b82d-a25bf2f6862d",
        "z": 440,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_BLOQUEO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 438,
          "y": 302
        },
        "size": {
          "width": 194.4375,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3571ddd2-c775-421c-a143-963d79f3c324",
        "z": 441,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_EXCEDE_ACTIVACION"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 595.390625,
          "y": 857
        },
        "size": {
          "width": 201.640625,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1c4317a2-a600-4555-9b9c-8259e1c79271",
        "z": 442,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {
          "name": {
            "text": "ST_SYS_01_EXCEDE_PERMANENCIA"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 166.4921875,
          "y": 221
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
        "z": 443,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ],
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
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
          "x": 166.4921875,
          "y": 236
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 460,
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
        "type": "Transition",
        "source": {
          "id": "818982fb-707c-497a-b82d-a25bf2f6862d"
        },
        "target": {
          "id": "9cf0716b-e6e6-4080-a932-9a14444487c7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 110.22187805175781,
              "dy": 21,
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
                "text": "EV_SYS_01_UNBLOCK"
              }
            },
            "position": {
              "distance": 0.4951406240034592,
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
        "id": "8afd8e74-744f-4829-aa3e-20054141f887",
        "z": 461,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9cf0716b-e6e6-4080-a932-9a14444487c7"
        },
        "target": {
          "id": "818982fb-707c-497a-b82d-a25bf2f6862d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 34.01092529296875,
              "dy": 48,
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
                "text": "EV_SYS_01_ENTER \n/raise EV_MENU_START"
              }
            },
            "position": {
              "distance": 0.4854220855548284,
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
        "id": "456b93ea-4445-4071-b13a-b02d1945d9c8",
        "z": 461,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
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
              "distance": 0.6217054578993055,
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
        "z": 461,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {}
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
        "z": 461,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76"
        },
        "target": {
          "id": "71b50ed2-f587-4591-9436-4e2570a3589e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 84.21875,
              "dy": 33,
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
                "text": "EV_SYS_01_INFRARROJA\n/tick=del_sys_01_permanencia"
              }
            },
            "position": {
              "distance": 0.4940046358140147,
              "offset": -116.43125915527344,
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
        "z": 461,
        "vertices": [
          {
            "x": 196,
            "y": 828
          },
          {
            "x": 197,
            "y": 839
          }
        ],
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
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
        "z": 461,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
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
              "distance": 0.29435992369793246,
              "offset": -49.098092892406925,
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
        "z": 461,
        "parent": "71b50ed2-f587-4591-9436-4e2570a3589e",
        "vertices": [
          {
            "x": 234,
            "y": 989
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
        "z": 461,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
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
              "dx": 12.225418090820312,
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
                "text": "EV_SYS_01_SWITCH_OFF"
              }
            },
            "position": {
              "distance": 0.4639851915977879,
              "offset": 84,
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
        "id": "9512625e-670f-46b4-9f2a-da50658e6190",
        "z": 461,
        "vertices": [
          {
            "x": -95,
            "y": 548
          },
          {
            "x": -43,
            "y": 357
          },
          {
            "x": 75,
            "y": 357
          }
        ],
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
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
        "z": 461,
        "vertices": [
          {
            "x": 720,
            "y": 319
          },
          {
            "x": 647,
            "y": 228
          },
          {
            "x": 232.01,
            "y": 277
          }
        ],
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
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
        "z": 461,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
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
        "z": 461,
        "vertices": [
          {
            "x": 66,
            "y": 879
          },
          {
            "x": -317,
            "y": 353
          },
          {
            "x": -153,
            "y": 332
          }
        ],
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {}
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
        "z": 461,
        "vertices": [
          {
            "x": -120,
            "y": 750
          }
        ],
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
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
        "z": 461,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {}
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
        "z": 461,
        "parent": "c9972a1f-932a-4f0f-8f4b-2aa95a95c4ed",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 9.21875,
              "dy": 50,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "11dc6be4-213d-47f0-9406-b790273c1c76",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 32.21875,
              "dy": 36,
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
                "text": "[tick>0]\n/tick--"
              }
            },
            "position": {
              "distance": 0.47090842497581215,
              "offset": -39.077743066630156,
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
        "id": "32906fc7-24f4-4888-b7d5-a6e34be5fce4",
        "z": 462,
        "vertices": [],
        "parent": "11dc6be4-213d-47f0-9406-b790273c1c76",
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