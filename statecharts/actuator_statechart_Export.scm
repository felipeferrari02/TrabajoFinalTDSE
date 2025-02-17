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
            "text": "sensor_system_actuator_statechart Export Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_BTN_01_DOWN\n    in event EV_BTN_01_UP\n    in event EV_BTN_02_DOWN\n    in event EV_BTN_02_UP\n    in event EV_SYS_01_LLEGO\n    in event EV_SYS_01_BTN\n    in event EV_SYS_01_YSEMARCHO\n    in event EV_SYS_01_PRINTED\n    in event EV_SYS_01_RETIRA\n    in event EV_SYS_01_VERTICAL\n    in event EV_SYS_01_PASANDO\n    in event EV_SYS_01_PASO\n    in event EV_SYS_01_CERRO\n    in event EV_LED_01_ON\n    in event EV_LED_01_OFF\n    in event EV_LED_01_BLINK\n    in event EV_LED_01_NOBLINK\n    in event EV_LED_01_PULSE\ninternal:\n    var tick: integer\n    var tick2: integer\n    var n: integer\n    const DEL_BTN_01_MAX: integer = 50 //unidad ms\n    const DEL_BTN_02_MAX: integer = 500 //unidad ms\n    const DEL_SYS_01_PASANDO: integer = 10000 //ms\n    const DEL_LED_01_BLINK: integer = 500 //ms\n    const N_LED_PULSE: integer = 1"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 668,
          "y": 131
        },
        "size": {
          "height": 636,
          "width": 1159
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "z": 283,
        "embeds": [
          "ec277e25-cbf0-4e6e-9dbb-47b8443ea92f",
          "b34cf7a2-1c7f-4587-a38a-b8ac11a1ce9c",
          "e8d68e4a-46bc-4cf2-b3df-c44727bf15bc",
          "a69b450f-5673-41c3-afd5-1e91f2e0a456",
          "5244b2f8-3033-41d2-8eeb-df577f372fd7",
          "c3727833-9615-405a-a74d-1f66ef07f428",
          "a4814217-c53e-41c0-a4c8-a15ec96e3d4c",
          "08b31f8a-dcb9-4f4c-a093-8f1fae326963",
          "bf341492-a633-4106-b460-92c5ba02c55d",
          "671656af-a00e-447d-b384-bc8f7552c18f",
          "c13dc094-f6af-443e-8ed4-aaacc27a7b86",
          "54bb69af-fa52-4912-ba41-77444e8d1e79",
          "3cc7bc87-c2c0-43b8-b9e4-f1844d8347c2",
          "cb7b26e9-04c2-4edb-aa43-1abb743d0e91"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "task_actuator"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1191.6875,
          "y": 202.5
        },
        "size": {
          "height": 60,
          "width": 93.625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "671656af-a00e-447d-b384-bc8f7552c18f",
        "z": 284,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "attrs": {
          "name": {
            "text": "ST_LED_01_OFF"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1195.2890625,
          "y": 401.5
        },
        "size": {
          "height": 60,
          "width": 86.421875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c13dc094-f6af-443e-8ed4-aaacc27a7b86",
        "z": 285,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "attrs": {
          "name": {
            "text": "ST_LED_01_ON"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "c13dc094-f6af-443e-8ed4-aaacc27a7b86"
        },
        "target": {
          "id": "671656af-a00e-447d-b384-bc8f7552c18f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 70.3267822265625,
              "dy": 47.111114501953125,
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
                "text": "EV_LED_01_OFF"
              }
            },
            "position": {
              "distance": 0.5517241379310345,
              "offset": 55.00000976562501,
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
        "id": "bf341492-a633-4106-b460-92c5ba02c55d",
        "z": 303,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "671656af-a00e-447d-b384-bc8f7552c18f"
        },
        "target": {
          "id": "c13dc094-f6af-443e-8ed4-aaacc27a7b86",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20.7227783203125,
              "dy": 40.111114501953125,
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
                "text": "EV_LED_01_ON"
              }
            },
            "position": {
              "distance": 0.43531382169654903,
              "offset": 52.99999023437522,
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
        "id": "08b31f8a-dcb9-4f4c-a093-8f1fae326963",
        "z": 303,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1523,
          "y": 274
        },
        "size": {
          "height": 419,
          "width": 291
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "54bb69af-fa52-4912-ba41-77444e8d1e79",
        "z": 318,
        "embeds": [
          "44ffff15-58d8-4fe4-b91b-ab07be72f61d"
        ],
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "attrs": {
          "name": {
            "text": "BLINKING"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 1524,
          "y": 312.59375
        },
        "size": {
          "height": 379.40625,
          "width": 289
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "44ffff15-58d8-4fe4-b91b-ab07be72f61d",
        "z": 319,
        "embeds": [
          "c7418f7b-c96f-476e-bd5c-bd729942c8cc",
          "84643db3-7398-4028-8032-33dcb2e32bba",
          "402ba3de-763e-47c2-be5a-a15c940c0fb8",
          "484168a5-b17e-453f-bb75-b9a6d228dd08",
          "c56393f4-9095-4788-adec-25d3344712a7",
          "7d1acd1c-4091-4d1b-8173-cc0d6ccdb98d",
          "6774b9bc-0e48-47a1-bc17-49663af8b9a5"
        ],
        "parent": "54bb69af-fa52-4912-ba41-77444e8d1e79",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1587.5859375,
          "y": 543.9999847412109
        },
        "size": {
          "height": 76.796875,
          "width": 100.828125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "484168a5-b17e-453f-bb75-b9a6d228dd08",
        "z": 320,
        "embeds": [
          "ae713ec3-451f-47d1-9d5d-41a109116e88"
        ],
        "parent": "44ffff15-58d8-4fe4-b91b-ab07be72f61d",
        "attrs": {
          "name": {
            "text": "ST_LED_01_ONB"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1587.5859375,
          "y": 376.99998474121094
        },
        "size": {
          "height": 60,
          "width": 100.828125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c56393f4-9095-4788-adec-25d3344712a7",
        "z": 321,
        "embeds": [
          "47e48585-2cee-40c9-9a0b-932fc2add75c"
        ],
        "parent": "44ffff15-58d8-4fe4-b91b-ab07be72f61d",
        "attrs": {
          "name": {
            "text": "ST_LED_01_OFFB"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 1544,
          "y": 327.49999237060547
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "7d1acd1c-4091-4d1b-8173-cc0d6ccdb98d",
        "z": 322,
        "embeds": [
          "42cab2f7-09e2-47a4-86ca-f1f9168da37a"
        ],
        "parent": "44ffff15-58d8-4fe4-b91b-ab07be72f61d",
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
          "x": 1544,
          "y": 342.49999237060547
        },
        "id": "42cab2f7-09e2-47a4-86ca-f1f9168da37a",
        "z": 328,
        "parent": "7d1acd1c-4091-4d1b-8173-cc0d6ccdb98d",
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
          "id": "7d1acd1c-4091-4d1b-8173-cc0d6ccdb98d"
        },
        "target": {
          "id": "c56393f4-9095-4788-adec-25d3344712a7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 15.429931640625,
              "dy": 38.74646759033203,
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
        "id": "c7418f7b-c96f-476e-bd5c-bd729942c8cc",
        "z": 329,
        "parent": "44ffff15-58d8-4fe4-b91b-ab07be72f61d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c56393f4-9095-4788-adec-25d3344712a7"
        },
        "target": {
          "id": "c56393f4-9095-4788-adec-25d3344712a7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 42.9140625,
              "dy": 9.903868675231934,
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
                "text": "EV_LED_01_BLINK \n[tick>0]/tick--"
              }
            },
            "position": {
              "distance": 0.27764479176111717,
              "offset": 20.552635609261934,
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
        "id": "47e48585-2cee-40c9-9a0b-932fc2add75c",
        "z": 329,
        "parent": "c56393f4-9095-4788-adec-25d3344712a7",
        "vertices": [
          {
            "x": 1683.5,
            "y": 355.99998474121094
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c56393f4-9095-4788-adec-25d3344712a7"
        },
        "target": {
          "id": "484168a5-b17e-453f-bb75-b9a6d228dd08",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 77.9140625,
              "dy": 31.90386962890625,
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
                "text": "[tick==0]\n/tick = DEL_LED_01_BLINK"
              }
            },
            "position": {
              "distance": 0.4689922480620155,
              "offset": -94,
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
        "id": "402ba3de-763e-47c2-be5a-a15c940c0fb8",
        "z": 329,
        "parent": "44ffff15-58d8-4fe4-b91b-ab07be72f61d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "484168a5-b17e-453f-bb75-b9a6d228dd08"
        },
        "target": {
          "id": "484168a5-b17e-453f-bb75-b9a6d228dd08",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 58.9140625,
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
                "text": "EV_LED_01_BLINK \n[tick>0] /tick--"
              }
            },
            "position": {
              "distance": 0.721171626743019,
              "offset": 20.20349494583036,
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
        "id": "ae713ec3-451f-47d1-9d5d-41a109116e88",
        "z": 329,
        "parent": "484168a5-b17e-453f-bb75-b9a6d228dd08",
        "vertices": [
          {
            "x": 1597.5,
            "y": 644.9999847412109
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "484168a5-b17e-453f-bb75-b9a6d228dd08"
        },
        "target": {
          "id": "c56393f4-9095-4788-adec-25d3344712a7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 27.9140625,
              "dy": 44.903868675231934,
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
                "text": "[tick==0]\n/tick = DEL_LED_01_BLINK"
              }
            },
            "position": {
              "distance": 0.42248062015503873,
              "offset": -93,
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
        "id": "84643db3-7398-4028-8032-33dcb2e32bba",
        "z": 329,
        "parent": "44ffff15-58d8-4fe4-b91b-ab07be72f61d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "54bb69af-fa52-4912-ba41-77444e8d1e79"
        },
        "target": {
          "id": "671656af-a00e-447d-b384-bc8f7552c18f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 64.324951171875,
              "dy": 27.5,
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
                "text": "EV_LED_01_NOBLINK"
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
        "id": "a4814217-c53e-41c0-a4c8-a15ec96e3d4c",
        "z": 329,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "vertices": [
          {
            "x": 1679,
            "y": 211
          },
          {
            "x": 1281,
            "y": 187
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "671656af-a00e-447d-b384-bc8f7552c18f"
        },
        "target": {
          "id": "54bb69af-fa52-4912-ba41-77444e8d1e79",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 204,
              "dy": 14,
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
                "text": "EV_LED_01_BLINK\n/tick = DEL_LED_01_BLINK"
              }
            },
            "position": {
              "distance": 0.3143302209746828,
              "offset": 22.103057691123087,
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
        "id": "c3727833-9615-405a-a74d-1f66ef07f428",
        "z": 330,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c13dc094-f6af-443e-8ed4-aaacc27a7b86"
        },
        "target": {
          "id": "54bb69af-fa52-4912-ba41-77444e8d1e79",
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
                "text": "EV_LED_01_BLINK\n/tick = DEL_LED_01_BLINK"
              }
            },
            "position": {
              "distance": 0.2998637936521841,
              "offset": -21,
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
        "id": "5244b2f8-3033-41d2-8eeb-df577f372fd7",
        "z": 331,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "vertices": [
          {
            "x": 1421,
            "y": 424
          },
          {
            "x": 1483,
            "y": 293
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 708,
          "y": 264
        },
        "size": {
          "height": 483,
          "width": 286
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3cc7bc87-c2c0-43b8-b9e4-f1844d8347c2",
        "z": 336,
        "embeds": [
          "072abcf0-4f4b-429a-a4de-7faeddf556aa"
        ],
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "attrs": {
          "name": {
            "text": "PULSE"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 709,
          "y": 302.59375
        },
        "size": {
          "height": 443.40625,
          "width": 284
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "072abcf0-4f4b-429a-a4de-7faeddf556aa",
        "z": 337,
        "embeds": [
          "9be8d1b8-0ae4-4272-9a6b-280faf1a6f9c",
          "c013758c-0b71-43e6-9db1-c825edcd02f9",
          "b5831675-b70f-4e9b-9d34-fb25891eea5e",
          "acb872ee-cbbc-4a63-9618-d7be87b3d044",
          "cf1404f3-f589-4186-abad-590dc0025521",
          "a436c16f-0bc0-40c2-9bca-db27f56bd212"
        ],
        "parent": "3cc7bc87-c2c0-43b8-b9e4-f1844d8347c2",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 800.1875,
          "y": 614
        },
        "size": {
          "height": 60,
          "width": 93.625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "acb872ee-cbbc-4a63-9618-d7be87b3d044",
        "z": 341,
        "parent": "072abcf0-4f4b-429a-a4de-7faeddf556aa",
        "embeds": [
          "0eeb1576-3827-4503-9bfb-0069b7e321f5"
        ],
        "attrs": {
          "name": {
            "text": "ST_LED_01_ONP"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 796.5859375,
          "y": 365
        },
        "size": {
          "height": 60,
          "width": 100.828125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "cf1404f3-f589-4186-abad-590dc0025521",
        "z": 342,
        "parent": "072abcf0-4f4b-429a-a4de-7faeddf556aa",
        "embeds": [
          "77b2fcf5-f1fa-4ba4-b855-6dba3afb272d"
        ],
        "attrs": {
          "name": {
            "text": "ST_LED_01_OFFP"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 1191.6875,
          "y": 162
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "cb7b26e9-04c2-4edb-aa43-1abb743d0e91",
        "z": 343,
        "embeds": [
          "6d02109b-378e-4fc5-bc48-0847dc5a86eb"
        ],
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
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
          "x": 1191.6875,
          "y": 177
        },
        "id": "6d02109b-378e-4fc5-bc48-0847dc5a86eb",
        "z": 344,
        "parent": "cb7b26e9-04c2-4edb-aa43-1abb743d0e91",
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
          "id": "cb7b26e9-04c2-4edb-aa43-1abb743d0e91"
        },
        "target": {
          "id": "671656af-a00e-447d-b384-bc8f7552c18f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 53.3267822265625,
              "dy": 24.111114501953125,
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
        "id": "a69b450f-5673-41c3-afd5-1e91f2e0a456",
        "z": 345,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": 722,
          "y": 323.99998474121094
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a436c16f-0bc0-40c2-9bca-db27f56bd212",
        "z": 346,
        "parent": "072abcf0-4f4b-429a-a4de-7faeddf556aa",
        "embeds": [
          "af158d9b-d55a-4315-805c-3bea29aeac34"
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
          "x": 722,
          "y": 338.99998474121094
        },
        "id": "af158d9b-d55a-4315-805c-3bea29aeac34",
        "z": 347,
        "parent": "a436c16f-0bc0-40c2-9bca-db27f56bd212",
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
          "id": "a436c16f-0bc0-40c2-9bca-db27f56bd212"
        },
        "target": {
          "id": "cf1404f3-f589-4186-abad-590dc0025521",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 14.4140625,
              "dy": 37.90386962890625,
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
        "id": "b5831675-b70f-4e9b-9d34-fb25891eea5e",
        "z": 348,
        "parent": "072abcf0-4f4b-429a-a4de-7faeddf556aa",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cf1404f3-f589-4186-abad-590dc0025521"
        },
        "target": {
          "id": "acb872ee-cbbc-4a63-9618-d7be87b3d044",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 71.8125,
              "dy": 40.90386962890625,
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
                "text": "[tick==0]\n/tick = DEL_LED_01_BLINK;\nn--"
              }
            },
            "position": {
              "distance": 0.6005291005291006,
              "offset": -93,
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
        "id": "c013758c-0b71-43e6-9db1-c825edcd02f9",
        "z": 349,
        "parent": "072abcf0-4f4b-429a-a4de-7faeddf556aa",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "acb872ee-cbbc-4a63-9618-d7be87b3d044"
        },
        "target": {
          "id": "cf1404f3-f589-4186-abad-590dc0025521",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 34.4140625,
              "dy": 43.90386962890625,
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
                "text": "[tick==0 && n>0]\n/tick = DEL_LED_01_BLINK\n"
              }
            },
            "position": {
              "distance": 0.3835978835978836,
              "offset": -86,
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
        "id": "9be8d1b8-0ae4-4272-9a6b-280faf1a6f9c",
        "z": 350,
        "parent": "072abcf0-4f4b-429a-a4de-7faeddf556aa",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cf1404f3-f589-4186-abad-590dc0025521"
        },
        "target": {
          "id": "cf1404f3-f589-4186-abad-590dc0025521",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 77.4140625,
              "dy": 25.90386962890625,
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
                "text": "EV_LED_01_PULSE\n[tick>0] /tick--"
              }
            },
            "position": {
              "distance": 0.7022542717309777,
              "offset": -21.093605085752923,
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
        "id": "77b2fcf5-f1fa-4ba4-b855-6dba3afb272d",
        "z": 351,
        "parent": "cf1404f3-f589-4186-abad-590dc0025521",
        "vertices": [
          {
            "x": 827,
            "y": 338
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "671656af-a00e-447d-b384-bc8f7552c18f"
        },
        "target": {
          "id": "3cc7bc87-c2c0-43b8-b9e4-f1844d8347c2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 182,
              "dy": 28.00873565673828,
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
                "text": "EV_LED_01_PULSE\n/tick = DEL_LED_01_BLINK; \nn = N_LED_PULSE"
              }
            },
            "position": {
              "distance": 0.5240732638275526,
              "offset": 30.013648698526286,
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
        "id": "e8d68e4a-46bc-4cf2-b3df-c44727bf15bc",
        "z": 353,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "vertices": [
          {
            "x": 890,
            "y": 203
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c13dc094-f6af-443e-8ed4-aaacc27a7b86"
        },
        "target": {
          "id": "3cc7bc87-c2c0-43b8-b9e4-f1844d8347c2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 260,
              "dy": 26.00873565673828,
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
                "text": "EV_LED_01_PULSE\n/tick = DEL_LED_01_BLINK; \nn = N_LED_PULSE"
              }
            },
            "position": {
              "distance": 0.25237271990216603,
              "offset": 38.01290281768851,
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
        "id": "b34cf7a2-1c7f-4587-a38a-b8ac11a1ce9c",
        "z": 354,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "vertices": [
          {
            "x": 1010,
            "y": 431.5
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "acb872ee-cbbc-4a63-9618-d7be87b3d044"
        },
        "target": {
          "id": "acb872ee-cbbc-4a63-9618-d7be87b3d044",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 68.8125,
              "dy": 46.90386962890625,
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
                "text": "EV_LED_01_PULSE\n[tick>0] /tick--"
              }
            },
            "position": {
              "distance": 0.4601519801042373,
              "offset": 21,
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
        "id": "0eeb1576-3827-4503-9bfb-0069b7e321f5",
        "z": 355,
        "parent": "acb872ee-cbbc-4a63-9618-d7be87b3d044",
        "vertices": [
          {
            "x": 821,
            "y": 691
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3cc7bc87-c2c0-43b8-b9e4-f1844d8347c2"
        },
        "target": {
          "id": "671656af-a00e-447d-b384-bc8f7552c18f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.3125,
              "dy": 34.5,
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
                "text": "[n==0]"
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
        "id": "ec277e25-cbf0-4e6e-9dbb-47b8443ea92f",
        "z": 356,
        "parent": "4af31af0-a7cd-4d60-a3fa-266b28f2ae35",
        "vertices": [
          {
            "x": 830,
            "y": 237
          }
        ],
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "schemaKey": "yakindu::c",
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
        "moduleName": "SensorSystemActuatorStatechart",
        "statemachinePrefix": "sensorSystemActuatorStatechart",
        "separator": "_",
        "headerFilenameExtension": "h",
        "sourceFilenameExtension": "c"
      },
      "Tracing": {
        "enterState": false,
        "exitState": false,
        "generic": false
      },
      "Includes": {
        "useRelativePaths": false
      },
      "GeneratorOptions": {
        "userAllocatedQueue": false,
        "metaSource": false
      },
      "GeneralFeatures": {
        "timerService": false
      }
    }
  }
}
