var data = {
    "Main": {
        "type": "dialogue",
        "data": {
            "start": {
                "type": "start",
                "next": "4"
            },
            "4": {
                "type": "line",
                "data": "This is the first line.",
                "next": "5"
            },
            "5": {
                "type": "line",
                "data": "This is the second line.",
                "next": "7"
            },
            "7": {
                "type": "call",
                "data": {
                    "type": "dialogue",
                    "data": {
                        "start": {
                            "type": "start",
                            "next": "20"
                        },
                        "20": {
                            "type": "line",
                            "data": "11 This is the first line of the first dialogue.",
                            "next": "21"
                        },
                        "21": {
                            "type": "line",
                            "data": "21 This is the second line of the first dialogue.",
                            "next": "23"
                        },
                        "23": {
                            "type": "call",
                            "data": {
                                "type": "dialogue",
                                "data": {
                                    "start": {
                                        "type": "start",
                                        "next": "26"
                                    },
                                    "26": {
                                        "type": "line",
                                        "data": "12 This is the first line of the second dialogue.",
                                        "next": "27"
                                    },
                                    "27": {
                                        "type": "line",
                                        "data": "22 This is the second line of the second dialogue.",
                                        "next": "29"
                                    },
                                    "29": {
                                        "type": "call",
                                        "data": {
                                            "type": "button",
                                            "data": {
                                                "start": {
                                                    "type": "start",
                                                    "next": "44"
                                                },
                                                "44": {
                                                    "type": "line",
                                                    "data": "This is the content of the first button.",
                                                    "next": "end"
                                                },
                                                "end": {
                                                    "type": "end"
                                                }
                                            },
                                            "options": {
                                                "46": {
                                                    "type": "option",
                                                    "var": "Opt11",
                                                    "data": {
                                                        "start": {
                                                            "type": "start",
                                                            "next": "47"
                                                        },
                                                        "47": {
                                                            "type": "line",
                                                            "data": "11O This is the first option of the first button.",
                                                            "next": "end"
                                                        },
                                                        "end": {
                                                            "type": "end"
                                                        }
                                                    }
                                                },
                                                "48": {
                                                    "type": "option",
                                                    "var": "Opt21",
                                                    "data": {
                                                        "start": {
                                                            "type": "start",
                                                            "next": "49"
                                                        },
                                                        "49": {
                                                            "type": "line",
                                                            "data": "21O This is the second option of the first button.",
                                                            "next": "end"
                                                        },
                                                        "end": {
                                                            "type": "end"
                                                        }
                                                    }
                                                }
                                            }
                                        },
                                        "next": "31"
                                    },
                                    "31": {
                                        "type": "if",
                                        "var": "Opt11",
                                        "data": {
                                            "start": {
                                                "type": "start",
                                                "next": "32"
                                            },
                                            "32": {
                                                "type": "line",
                                                "data": "You choose Opt11.",
                                                "next": "end"
                                            },
                                            "end": {
                                                "type": "end"
                                            }
                                        },
                                        "next": "34"
                                    },
                                    "34": {
                                        "type": "if",
                                        "var": "Opt21",
                                        "data": {
                                            "start": {
                                                "type": "start",
                                                "next": "35"
                                            },
                                            "35": {
                                                "type": "line",
                                                "data": "You choose Opt21.",
                                                "next": "end"
                                            },
                                            "end": {
                                                "type": "end"
                                            }
                                        },
                                        "next": "37"
                                    },
                                    "37": {
                                        "type": "call",
                                        "data": {
                                            "type": "dialogue",
                                            "data": {
                                                "start": {
                                                    "type": "start",
                                                    "next": "40"
                                                },
                                                "40": {
                                                    "type": "line",
                                                    "data": "13 This is the first line of the third dialogue.",
                                                    "next": "41"
                                                },
                                                "41": {
                                                    "type": "line",
                                                    "data": "23 This is the second line of the third dialogue.",
                                                    "next": "end"
                                                },
                                                "end": {
                                                    "type": "end"
                                                }
                                            }
                                        },
                                        "next": "end"
                                    },
                                    "end": {
                                        "type": "end"
                                    }
                                }
                            },
                            "next": "end"
                        },
                        "end": {
                            "type": "end"
                        }
                    }
                },
                "next": "9"
            },
            "9": {
                "type": "call",
                "data": {
                    "type": "dialogue",
                    "data": {
                        "start": {
                            "type": "start",
                            "next": "60"
                        },
                        "60": {
                            "type": "line",
                            "data": "14 This is the first line of the third dialogue.",
                            "next": "61"
                        },
                        "61": {
                            "type": "line",
                            "data": "24 This is the second line of the third dialogue.",
                            "next": "end"
                        },
                        "end": {
                            "type": "end"
                        }
                    }
                },
                "next": "11"
            },
            "11": {
                "type": "call",
                "data": {
                    "type": "button",
                    "data": {
                        "start": {
                            "type": "start",
                            "next": "52"
                        },
                        "52": {
                            "type": "line",
                            "data": "This is the content of the second button.",
                            "next": "end"
                        },
                        "end": {
                            "type": "end"
                        }
                    },
                    "options": {
                        "54": {
                            "type": "option",
                            "var": "Opt12",
                            "data": {
                                "start": {
                                    "type": "start",
                                    "next": "55"
                                },
                                "55": {
                                    "type": "line",
                                    "data": "12O This is the first option of the second button.",
                                    "next": "end"
                                },
                                "end": {
                                    "type": "end"
                                }
                            }
                        },
                        "56": {
                            "type": "option",
                            "var": "Opt22",
                            "data": {
                                "start": {
                                    "type": "start",
                                    "next": "57"
                                },
                                "57": {
                                    "type": "line",
                                    "data": "22O This is the second option of the second button.",
                                    "next": "end"
                                },
                                "end": {
                                    "type": "end"
                                }
                            }
                        }
                    }
                },
                "next": "13"
            },
            "13": {
                "type": "if",
                "var": "Opt21",
                "data": {
                    "start": {
                        "type": "start",
                        "next": "14"
                    },
                    "14": {
                        "type": "line",
                        "data": "You choose Opt21.",
                        "next": "end"
                    },
                    "end": {
                        "type": "end"
                    }
                },
                "next": "16"
            },
            "16": {
                "type": "if",
                "var": "Opt22",
                "data": {
                    "start": {
                        "type": "start",
                        "next": "17"
                    },
                    "17": {
                        "type": "line",
                        "data": "You choose Opt22.",
                        "next": "end"
                    },
                    "end": {
                        "type": "end"
                    }
                },
                "next": "end"
            },
            "end": {
                "type": "end"
            }
        }
    },
    "Dialogue1": {
        "type": "dialogue",
        "data": {
            "start": {
                "type": "start",
                "next": "20"
            },
            "20": {
                "type": "line",
                "data": "11 This is the first line of the first dialogue.",
                "next": "21"
            },
            "21": {
                "type": "line",
                "data": "21 This is the second line of the first dialogue.",
                "next": "23"
            },
            "23": {
                "type": "call",
                "data": {
                    "type": "dialogue",
                    "data": {
                        "start": {
                            "type": "start",
                            "next": "26"
                        },
                        "26": {
                            "type": "line",
                            "data": "12 This is the first line of the second dialogue.",
                            "next": "27"
                        },
                        "27": {
                            "type": "line",
                            "data": "22 This is the second line of the second dialogue.",
                            "next": "29"
                        },
                        "29": {
                            "type": "call",
                            "data": {
                                "type": "button",
                                "data": {
                                    "start": {
                                        "type": "start",
                                        "next": "44"
                                    },
                                    "44": {
                                        "type": "line",
                                        "data": "This is the content of the first button.",
                                        "next": "end"
                                    },
                                    "end": {
                                        "type": "end"
                                    }
                                },
                                "options": {
                                    "46": {
                                        "type": "option",
                                        "var": "Opt11",
                                        "data": {
                                            "start": {
                                                "type": "start",
                                                "next": "47"
                                            },
                                            "47": {
                                                "type": "line",
                                                "data": "11O This is the first option of the first button.",
                                                "next": "end"
                                            },
                                            "end": {
                                                "type": "end"
                                            }
                                        }
                                    },
                                    "48": {
                                        "type": "option",
                                        "var": "Opt21",
                                        "data": {
                                            "start": {
                                                "type": "start",
                                                "next": "49"
                                            },
                                            "49": {
                                                "type": "line",
                                                "data": "21O This is the second option of the first button.",
                                                "next": "end"
                                            },
                                            "end": {
                                                "type": "end"
                                            }
                                        }
                                    }
                                }
                            },
                            "next": "31"
                        },
                        "31": {
                            "type": "if",
                            "var": "Opt11",
                            "data": {
                                "start": {
                                    "type": "start",
                                    "next": "32"
                                },
                                "32": {
                                    "type": "line",
                                    "data": "You choose Opt11.",
                                    "next": "end"
                                },
                                "end": {
                                    "type": "end"
                                }
                            },
                            "next": "34"
                        },
                        "34": {
                            "type": "if",
                            "var": "Opt21",
                            "data": {
                                "start": {
                                    "type": "start",
                                    "next": "35"
                                },
                                "35": {
                                    "type": "line",
                                    "data": "You choose Opt21.",
                                    "next": "end"
                                },
                                "end": {
                                    "type": "end"
                                }
                            },
                            "next": "37"
                        },
                        "37": {
                            "type": "call",
                            "data": {
                                "type": "dialogue",
                                "data": {
                                    "start": {
                                        "type": "start",
                                        "next": "40"
                                    },
                                    "40": {
                                        "type": "line",
                                        "data": "13 This is the first line of the third dialogue.",
                                        "next": "41"
                                    },
                                    "41": {
                                        "type": "line",
                                        "data": "23 This is the second line of the third dialogue.",
                                        "next": "end"
                                    },
                                    "end": {
                                        "type": "end"
                                    }
                                }
                            },
                            "next": "end"
                        },
                        "end": {
                            "type": "end"
                        }
                    }
                },
                "next": "end"
            },
            "end": {
                "type": "end"
            }
        }
    },
    "Dialogue2": {
        "type": "dialogue",
        "data": {
            "start": {
                "type": "start",
                "next": "26"
            },
            "26": {
                "type": "line",
                "data": "12 This is the first line of the second dialogue.",
                "next": "27"
            },
            "27": {
                "type": "line",
                "data": "22 This is the second line of the second dialogue.",
                "next": "29"
            },
            "29": {
                "type": "call",
                "data": {
                    "type": "button",
                    "data": {
                        "start": {
                            "type": "start",
                            "next": "44"
                        },
                        "44": {
                            "type": "line",
                            "data": "This is the content of the first button.",
                            "next": "end"
                        },
                        "end": {
                            "type": "end"
                        }
                    },
                    "options": {
                        "46": {
                            "type": "option",
                            "var": "Opt11",
                            "data": {
                                "start": {
                                    "type": "start",
                                    "next": "47"
                                },
                                "47": {
                                    "type": "line",
                                    "data": "11O This is the first option of the first button.",
                                    "next": "end"
                                },
                                "end": {
                                    "type": "end"
                                }
                            }
                        },
                        "48": {
                            "type": "option",
                            "var": "Opt21",
                            "data": {
                                "start": {
                                    "type": "start",
                                    "next": "49"
                                },
                                "49": {
                                    "type": "line",
                                    "data": "21O This is the second option of the first button.",
                                    "next": "end"
                                },
                                "end": {
                                    "type": "end"
                                }
                            }
                        }
                    }
                },
                "next": "31"
            },
            "31": {
                "type": "if",
                "var": "Opt11",
                "data": {
                    "start": {
                        "type": "start",
                        "next": "32"
                    },
                    "32": {
                        "type": "line",
                        "data": "You choose Opt11.",
                        "next": "end"
                    },
                    "end": {
                        "type": "end"
                    }
                },
                "next": "34"
            },
            "34": {
                "type": "if",
                "var": "Opt21",
                "data": {
                    "start": {
                        "type": "start",
                        "next": "35"
                    },
                    "35": {
                        "type": "line",
                        "data": "You choose Opt21.",
                        "next": "end"
                    },
                    "end": {
                        "type": "end"
                    }
                },
                "next": "37"
            },
            "37": {
                "type": "call",
                "data": {
                    "type": "dialogue",
                    "data": {
                        "start": {
                            "type": "start",
                            "next": "40"
                        },
                        "40": {
                            "type": "line",
                            "data": "13 This is the first line of the third dialogue.",
                            "next": "41"
                        },
                        "41": {
                            "type": "line",
                            "data": "23 This is the second line of the third dialogue.",
                            "next": "end"
                        },
                        "end": {
                            "type": "end"
                        }
                    }
                },
                "next": "end"
            },
            "end": {
                "type": "end"
            }
        }
    },
    "Dialogue3": {
        "type": "dialogue",
        "data": {
            "start": {
                "type": "start",
                "next": "40"
            },
            "40": {
                "type": "line",
                "data": "13 This is the first line of the third dialogue.",
                "next": "41"
            },
            "41": {
                "type": "line",
                "data": "23 This is the second line of the third dialogue.",
                "next": "end"
            },
            "end": {
                "type": "end"
            }
        }
    },
    "Button1": {
        "type": "button",
        "data": {
            "start": {
                "type": "start",
                "next": "44"
            },
            "44": {
                "type": "line",
                "data": "This is the content of the first button.",
                "next": "end"
            },
            "end": {
                "type": "end"
            }
        },
        "options": {
            "46": {
                "type": "option",
                "var": "Opt11",
                "data": {
                    "start": {
                        "type": "start",
                        "next": "47"
                    },
                    "47": {
                        "type": "line",
                        "data": "11O This is the first option of the first button.",
                        "next": "end"
                    },
                    "end": {
                        "type": "end"
                    }
                }
            },
            "48": {
                "type": "option",
                "var": "Opt21",
                "data": {
                    "start": {
                        "type": "start",
                        "next": "49"
                    },
                    "49": {
                        "type": "line",
                        "data": "21O This is the second option of the first button.",
                        "next": "end"
                    },
                    "end": {
                        "type": "end"
                    }
                }
            }
        }
    },
    "Button2": {
        "type": "button",
        "data": {
            "start": {
                "type": "start",
                "next": "52"
            },
            "52": {
                "type": "line",
                "data": "This is the content of the second button.",
                "next": "end"
            },
            "end": {
                "type": "end"
            }
        },
        "options": {
            "54": {
                "type": "option",
                "var": "Opt12",
                "data": {
                    "start": {
                        "type": "start",
                        "next": "55"
                    },
                    "55": {
                        "type": "line",
                        "data": "12O This is the first option of the second button.",
                        "next": "end"
                    },
                    "end": {
                        "type": "end"
                    }
                }
            },
            "56": {
                "type": "option",
                "var": "Opt22",
                "data": {
                    "start": {
                        "type": "start",
                        "next": "57"
                    },
                    "57": {
                        "type": "line",
                        "data": "22O This is the second option of the second button.",
                        "next": "end"
                    },
                    "end": {
                        "type": "end"
                    }
                }
            }
        }
    },
    "Dialogue4": {
        "type": "dialogue",
        "data": {
            "start": {
                "type": "start",
                "next": "60"
            },
            "60": {
                "type": "line",
                "data": "14 This is the first line of the third dialogue.",
                "next": "61"
            },
            "61": {
                "type": "line",
                "data": "24 This is the second line of the third dialogue.",
                "next": "end"
            },
            "end": {
                "type": "end"
            }
        }
    },
    "End": {
        "type": "dialogue",
        "data": {
            "start": {
                "type": "start",
                "next": "64"
            },
            "64": {
                "type": "line",
                "data": "end",
                "next": "end"
            },
            "end": {
                "type": "end"
            }
        }
    }
}