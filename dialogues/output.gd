var data = {
    "Dialogue4": {
        "type": "dialogue", 
        "data": {
            "73": {
                "type": "line", 
                "data": "14 This is the first line of the third dialogue.", 
                "next": "74"
            }, 
            "start": {
                "type": "start", 
                "next": "72"
            }, 
            "74": {
                "type": "line", 
                "data": "24 This is the second line of the third dialogue.", 
                "next": "end"
            }, 
            "end": {
                "type": "end"
            }, 
            "72": {
                "type": "call", 
                "data": {
                    "end": {
                        "type": "end"
                    }, 
                    "data": "assets/empty.png", 
                    "type": "avatar"
                }, 
                "next": "73"
            }
        }
    }, 
    "Dialogue3": {
        "type": "dialogue", 
        "data": {
            "end": {
                "type": "end"
            }, 
            "48": {
                "type": "call", 
                "data": {
                    "end": {
                        "type": "end"
                    }, 
                    "data": "assets/characters/character3/avatar.png", 
                    "type": "avatar"
                }, 
                "next": "50"
            }, 
            "50": {
                "type": "line", 
                "data": "Now using Avatar3", 
                "next": "52"
            }, 
            "53": {
                "type": "line", 
                "data": "23 This is the second line of the third dialogue.", 
                "next": "end"
            }, 
            "52": {
                "type": "line", 
                "data": "13 This is the first line of the third dialogue.", 
                "next": "53"
            }, 
            "start": {
                "type": "start", 
                "next": "48"
            }
        }
    }, 
    "Dialogue2": {
        "type": "dialogue", 
        "data": {
            "39": {
                "var": "Opt11", 
                "type": "if", 
                "data": {
                    "start": {
                        "type": "start", 
                        "next": "40"
                    }, 
                    "end": {
                        "type": "end"
                    }, 
                    "40": {
                        "type": "line", 
                        "data": "You choose Opt11.", 
                        "next": "end"
                    }
                }, 
                "next": "42"
            }, 
            "30": {
                "type": "call", 
                "data": {
                    "end": {
                        "type": "end"
                    }, 
                    "data": "assets/characters/character2/avatar.png", 
                    "type": "avatar"
                }, 
                "next": "32"
            }, 
            "end": {
                "type": "end"
            }, 
            "32": {
                "type": "line", 
                "data": "Now using Avatar2", 
                "next": "34"
            }, 
            "45": {
                "type": "call", 
                "data": {
                    "type": "dialogue", 
                    "data": {
                        "end": {
                            "type": "end"
                        }, 
                        "48": {
                            "type": "call", 
                            "data": {
                                "end": {
                                    "type": "end"
                                }, 
                                "data": "assets/characters/character3/avatar.png", 
                                "type": "avatar"
                            }, 
                            "next": "50"
                        }, 
                        "50": {
                            "type": "line", 
                            "data": "Now using Avatar3", 
                            "next": "52"
                        }, 
                        "53": {
                            "type": "line", 
                            "data": "23 This is the second line of the third dialogue.", 
                            "next": "end"
                        }, 
                        "52": {
                            "type": "line", 
                            "data": "13 This is the first line of the third dialogue.", 
                            "next": "53"
                        }, 
                        "start": {
                            "type": "start", 
                            "next": "48"
                        }
                    }
                }, 
                "next": "end"
            }, 
            "37": {
                "type": "call", 
                "data": {
                    "type": "button", 
                    "data": {
                        "start": {
                            "type": "start", 
                            "next": "56"
                        }, 
                        "56": {
                            "type": "line", 
                            "data": "This is the content of the first button.", 
                            "next": "end"
                        }, 
                        "end": {
                            "type": "end"
                        }
                    }, 
                    "options": {
                        "60": {
                            "var": "Opt21", 
                            "type": "option", 
                            "data": {
                                "start": {
                                    "type": "start", 
                                    "next": "61"
                                }, 
                                "end": {
                                    "type": "end"
                                }, 
                                "61": {
                                    "type": "line", 
                                    "data": "21O This is the second option of the first button.", 
                                    "next": "end"
                                }
                            }
                        }, 
                        "58": {
                            "var": "Opt11", 
                            "type": "option", 
                            "data": {
                                "start": {
                                    "type": "start", 
                                    "next": "59"
                                }, 
                                "end": {
                                    "type": "end"
                                }, 
                                "59": {
                                    "type": "line", 
                                    "data": "11O This is the first option of the first button.", 
                                    "next": "end"
                                }
                            }
                        }
                    }
                }, 
                "next": "39"
            }, 
            "35": {
                "type": "line", 
                "data": "22 This is the second line of the second dialogue.", 
                "next": "37"
            }, 
            "34": {
                "type": "line", 
                "data": "12 This is the first line of the second dialogue.", 
                "next": "35"
            }, 
            "start": {
                "type": "start", 
                "next": "30"
            }, 
            "42": {
                "var": "Opt21", 
                "type": "if", 
                "data": {
                    "start": {
                        "type": "start", 
                        "next": "43"
                    }, 
                    "end": {
                        "type": "end"
                    }, 
                    "43": {
                        "type": "line", 
                        "data": "You choose Opt21.", 
                        "next": "end"
                    }
                }, 
                "next": "45"
            }
        }
    }, 
    "Dialogue1": {
        "type": "dialogue", 
        "data": {
            "24": {
                "type": "line", 
                "data": "11 This is the first line of the first dialogue.", 
                "next": "25"
            }, 
            "25": {
                "type": "line", 
                "data": "21 This is the second line of the first dialogue.", 
                "next": "27"
            }, 
            "27": {
                "type": "call", 
                "data": {
                    "type": "dialogue", 
                    "data": {
                        "39": {
                            "var": "Opt11", 
                            "type": "if", 
                            "data": {
                                "start": {
                                    "type": "start", 
                                    "next": "40"
                                }, 
                                "end": {
                                    "type": "end"
                                }, 
                                "40": {
                                    "type": "line", 
                                    "data": "You choose Opt11.", 
                                    "next": "end"
                                }
                            }, 
                            "next": "42"
                        }, 
                        "30": {
                            "type": "call", 
                            "data": {
                                "end": {
                                    "type": "end"
                                }, 
                                "data": "assets/characters/character2/avatar.png", 
                                "type": "avatar"
                            }, 
                            "next": "32"
                        }, 
                        "end": {
                            "type": "end"
                        }, 
                        "32": {
                            "type": "line", 
                            "data": "Now using Avatar2", 
                            "next": "34"
                        }, 
                        "45": {
                            "type": "call", 
                            "data": {
                                "type": "dialogue", 
                                "data": {
                                    "end": {
                                        "type": "end"
                                    }, 
                                    "48": {
                                        "type": "call", 
                                        "data": {
                                            "end": {
                                                "type": "end"
                                            }, 
                                            "data": "assets/characters/character3/avatar.png", 
                                            "type": "avatar"
                                        }, 
                                        "next": "50"
                                    }, 
                                    "50": {
                                        "type": "line", 
                                        "data": "Now using Avatar3", 
                                        "next": "52"
                                    }, 
                                    "53": {
                                        "type": "line", 
                                        "data": "23 This is the second line of the third dialogue.", 
                                        "next": "end"
                                    }, 
                                    "52": {
                                        "type": "line", 
                                        "data": "13 This is the first line of the third dialogue.", 
                                        "next": "53"
                                    }, 
                                    "start": {
                                        "type": "start", 
                                        "next": "48"
                                    }
                                }
                            }, 
                            "next": "end"
                        }, 
                        "37": {
                            "type": "call", 
                            "data": {
                                "type": "button", 
                                "data": {
                                    "start": {
                                        "type": "start", 
                                        "next": "56"
                                    }, 
                                    "56": {
                                        "type": "line", 
                                        "data": "This is the content of the first button.", 
                                        "next": "end"
                                    }, 
                                    "end": {
                                        "type": "end"
                                    }
                                }, 
                                "options": {
                                    "60": {
                                        "var": "Opt21", 
                                        "type": "option", 
                                        "data": {
                                            "start": {
                                                "type": "start", 
                                                "next": "61"
                                            }, 
                                            "end": {
                                                "type": "end"
                                            }, 
                                            "61": {
                                                "type": "line", 
                                                "data": "21O This is the second option of the first button.", 
                                                "next": "end"
                                            }
                                        }
                                    }, 
                                    "58": {
                                        "var": "Opt11", 
                                        "type": "option", 
                                        "data": {
                                            "start": {
                                                "type": "start", 
                                                "next": "59"
                                            }, 
                                            "end": {
                                                "type": "end"
                                            }, 
                                            "59": {
                                                "type": "line", 
                                                "data": "11O This is the first option of the first button.", 
                                                "next": "end"
                                            }
                                        }
                                    }
                                }
                            }, 
                            "next": "39"
                        }, 
                        "35": {
                            "type": "line", 
                            "data": "22 This is the second line of the second dialogue.", 
                            "next": "37"
                        }, 
                        "34": {
                            "type": "line", 
                            "data": "12 This is the first line of the second dialogue.", 
                            "next": "35"
                        }, 
                        "start": {
                            "type": "start", 
                            "next": "30"
                        }, 
                        "42": {
                            "var": "Opt21", 
                            "type": "if", 
                            "data": {
                                "start": {
                                    "type": "start", 
                                    "next": "43"
                                }, 
                                "end": {
                                    "type": "end"
                                }, 
                                "43": {
                                    "type": "line", 
                                    "data": "You choose Opt21.", 
                                    "next": "end"
                                }
                            }, 
                            "next": "45"
                        }
                    }
                }, 
                "next": "end"
            }, 
            "20": {
                "type": "call", 
                "data": {
                    "end": {
                        "type": "end"
                    }, 
                    "data": "assets/characters/character1/avatar.png", 
                    "type": "avatar"
                }, 
                "next": "22"
            }, 
            "22": {
                "type": "line", 
                "data": "Now using Avatar1", 
                "next": "24"
            }, 
            "start": {
                "type": "start", 
                "next": "20"
            }, 
            "end": {
                "type": "end"
            }
        }
    }, 
    "EmptyAvatar": {
        "end": {
            "type": "end"
        }, 
        "data": "assets/empty.png", 
        "type": "avatar"
    }, 
    "Avatar2": {
        "end": {
            "type": "end"
        }, 
        "data": "assets/characters/character2/avatar.png", 
        "type": "avatar"
    }, 
    "Avatar3": {
        "end": {
            "type": "end"
        }, 
        "data": "assets/characters/character3/avatar.png", 
        "type": "avatar"
    }, 
    "Avatar1": {
        "end": {
            "type": "end"
        }, 
        "data": "assets/characters/character1/avatar.png", 
        "type": "avatar"
    }, 
    "Button2": {
        "type": "button", 
        "data": {
            "start": {
                "type": "start", 
                "next": "64"
            }, 
            "end": {
                "type": "end"
            }, 
            "64": {
                "type": "line", 
                "data": "This is the content of the second button.", 
                "next": "end"
            }
        }, 
        "options": {
            "68": {
                "var": "Opt22", 
                "type": "option", 
                "data": {
                    "start": {
                        "type": "start", 
                        "next": "69"
                    }, 
                    "end": {
                        "type": "end"
                    }, 
                    "69": {
                        "type": "line", 
                        "data": "22O This is the second option of the second button.", 
                        "next": "end"
                    }
                }
            }, 
            "66": {
                "var": "Opt12", 
                "type": "option", 
                "data": {
                    "start": {
                        "type": "start", 
                        "next": "67"
                    }, 
                    "end": {
                        "type": "end"
                    }, 
                    "67": {
                        "type": "line", 
                        "data": "12O This is the first option of the second button.", 
                        "next": "end"
                    }
                }
            }
        }
    }, 
    "Button1": {
        "type": "button", 
        "data": {
            "start": {
                "type": "start", 
                "next": "56"
            }, 
            "56": {
                "type": "line", 
                "data": "This is the content of the first button.", 
                "next": "end"
            }, 
            "end": {
                "type": "end"
            }
        }, 
        "options": {
            "60": {
                "var": "Opt21", 
                "type": "option", 
                "data": {
                    "start": {
                        "type": "start", 
                        "next": "61"
                    }, 
                    "end": {
                        "type": "end"
                    }, 
                    "61": {
                        "type": "line", 
                        "data": "21O This is the second option of the first button.", 
                        "next": "end"
                    }
                }
            }, 
            "58": {
                "var": "Opt11", 
                "type": "option", 
                "data": {
                    "start": {
                        "type": "start", 
                        "next": "59"
                    }, 
                    "end": {
                        "type": "end"
                    }, 
                    "59": {
                        "type": "line", 
                        "data": "11O This is the first option of the first button.", 
                        "next": "end"
                    }
                }
            }
        }
    }, 
    "End": {
        "type": "dialogue", 
        "data": {
            "start": {
                "type": "start", 
                "next": "89"
            }, 
            "89": {
                "type": "line", 
                "data": "end", 
                "next": "end"
            }, 
            "end": {
                "type": "end"
            }
        }
    }, 
    "Main": {
        "type": "dialogue", 
        "data": {
            "11": {
                "type": "call", 
                "data": {
                    "type": "button", 
                    "data": {
                        "start": {
                            "type": "start", 
                            "next": "64"
                        }, 
                        "end": {
                            "type": "end"
                        }, 
                        "64": {
                            "type": "line", 
                            "data": "This is the content of the second button.", 
                            "next": "end"
                        }
                    }, 
                    "options": {
                        "68": {
                            "var": "Opt22", 
                            "type": "option", 
                            "data": {
                                "start": {
                                    "type": "start", 
                                    "next": "69"
                                }, 
                                "end": {
                                    "type": "end"
                                }, 
                                "69": {
                                    "type": "line", 
                                    "data": "22O This is the second option of the second button.", 
                                    "next": "end"
                                }
                            }
                        }, 
                        "66": {
                            "var": "Opt12", 
                            "type": "option", 
                            "data": {
                                "start": {
                                    "type": "start", 
                                    "next": "67"
                                }, 
                                "end": {
                                    "type": "end"
                                }, 
                                "67": {
                                    "type": "line", 
                                    "data": "12O This is the first option of the second button.", 
                                    "next": "end"
                                }
                            }
                        }
                    }
                }, 
                "next": "13"
            }, 
            "13": {
                "var": "Opt21", 
                "type": "if", 
                "data": {
                    "start": {
                        "type": "start", 
                        "next": "14"
                    }, 
                    "end": {
                        "type": "end"
                    }, 
                    "14": {
                        "type": "line", 
                        "data": "You choose Opt21.", 
                        "next": "end"
                    }
                }, 
                "next": "16"
            }, 
            "end": {
                "type": "end"
            }, 
            "16": {
                "var": "Opt22", 
                "type": "if", 
                "data": {
                    "start": {
                        "type": "start", 
                        "next": "17"
                    }, 
                    "end": {
                        "type": "end"
                    }, 
                    "17": {
                        "type": "line", 
                        "data": "You choose Opt22.", 
                        "next": "end"
                    }
                }, 
                "next": "end"
            }, 
            "start": {
                "type": "start", 
                "next": "4"
            }, 
            "5": {
                "type": "line", 
                "data": "This is the second line.", 
                "next": "7"
            }, 
            "4": {
                "type": "line", 
                "data": "This is the first line.", 
                "next": "5"
            }, 
            "7": {
                "type": "call", 
                "data": {
                    "type": "dialogue", 
                    "data": {
                        "24": {
                            "type": "line", 
                            "data": "11 This is the first line of the first dialogue.", 
                            "next": "25"
                        }, 
                        "25": {
                            "type": "line", 
                            "data": "21 This is the second line of the first dialogue.", 
                            "next": "27"
                        }, 
                        "27": {
                            "type": "call", 
                            "data": {
                                "type": "dialogue", 
                                "data": {
                                    "39": {
                                        "var": "Opt11", 
                                        "type": "if", 
                                        "data": {
                                            "start": {
                                                "type": "start", 
                                                "next": "40"
                                            }, 
                                            "end": {
                                                "type": "end"
                                            }, 
                                            "40": {
                                                "type": "line", 
                                                "data": "You choose Opt11.", 
                                                "next": "end"
                                            }
                                        }, 
                                        "next": "42"
                                    }, 
                                    "30": {
                                        "type": "call", 
                                        "data": {
                                            "end": {
                                                "type": "end"
                                            }, 
                                            "data": "assets/characters/character2/avatar.png", 
                                            "type": "avatar"
                                        }, 
                                        "next": "32"
                                    }, 
                                    "end": {
                                        "type": "end"
                                    }, 
                                    "32": {
                                        "type": "line", 
                                        "data": "Now using Avatar2", 
                                        "next": "34"
                                    }, 
                                    "45": {
                                        "type": "call", 
                                        "data": {
                                            "type": "dialogue", 
                                            "data": {
                                                "end": {
                                                    "type": "end"
                                                }, 
                                                "48": {
                                                    "type": "call", 
                                                    "data": {
                                                        "end": {
                                                            "type": "end"
                                                        }, 
                                                        "data": "assets/characters/character3/avatar.png", 
                                                        "type": "avatar"
                                                    }, 
                                                    "next": "50"
                                                }, 
                                                "50": {
                                                    "type": "line", 
                                                    "data": "Now using Avatar3", 
                                                    "next": "52"
                                                }, 
                                                "53": {
                                                    "type": "line", 
                                                    "data": "23 This is the second line of the third dialogue.", 
                                                    "next": "end"
                                                }, 
                                                "52": {
                                                    "type": "line", 
                                                    "data": "13 This is the first line of the third dialogue.", 
                                                    "next": "53"
                                                }, 
                                                "start": {
                                                    "type": "start", 
                                                    "next": "48"
                                                }
                                            }
                                        }, 
                                        "next": "end"
                                    }, 
                                    "37": {
                                        "type": "call", 
                                        "data": {
                                            "type": "button", 
                                            "data": {
                                                "start": {
                                                    "type": "start", 
                                                    "next": "56"
                                                }, 
                                                "56": {
                                                    "type": "line", 
                                                    "data": "This is the content of the first button.", 
                                                    "next": "end"
                                                }, 
                                                "end": {
                                                    "type": "end"
                                                }
                                            }, 
                                            "options": {
                                                "60": {
                                                    "var": "Opt21", 
                                                    "type": "option", 
                                                    "data": {
                                                        "start": {
                                                            "type": "start", 
                                                            "next": "61"
                                                        }, 
                                                        "end": {
                                                            "type": "end"
                                                        }, 
                                                        "61": {
                                                            "type": "line", 
                                                            "data": "21O This is the second option of the first button.", 
                                                            "next": "end"
                                                        }
                                                    }
                                                }, 
                                                "58": {
                                                    "var": "Opt11", 
                                                    "type": "option", 
                                                    "data": {
                                                        "start": {
                                                            "type": "start", 
                                                            "next": "59"
                                                        }, 
                                                        "end": {
                                                            "type": "end"
                                                        }, 
                                                        "59": {
                                                            "type": "line", 
                                                            "data": "11O This is the first option of the first button.", 
                                                            "next": "end"
                                                        }
                                                    }
                                                }
                                            }
                                        }, 
                                        "next": "39"
                                    }, 
                                    "35": {
                                        "type": "line", 
                                        "data": "22 This is the second line of the second dialogue.", 
                                        "next": "37"
                                    }, 
                                    "34": {
                                        "type": "line", 
                                        "data": "12 This is the first line of the second dialogue.", 
                                        "next": "35"
                                    }, 
                                    "start": {
                                        "type": "start", 
                                        "next": "30"
                                    }, 
                                    "42": {
                                        "var": "Opt21", 
                                        "type": "if", 
                                        "data": {
                                            "start": {
                                                "type": "start", 
                                                "next": "43"
                                            }, 
                                            "end": {
                                                "type": "end"
                                            }, 
                                            "43": {
                                                "type": "line", 
                                                "data": "You choose Opt21.", 
                                                "next": "end"
                                            }
                                        }, 
                                        "next": "45"
                                    }
                                }
                            }, 
                            "next": "end"
                        }, 
                        "20": {
                            "type": "call", 
                            "data": {
                                "end": {
                                    "type": "end"
                                }, 
                                "data": "assets/characters/character1/avatar.png", 
                                "type": "avatar"
                            }, 
                            "next": "22"
                        }, 
                        "22": {
                            "type": "line", 
                            "data": "Now using Avatar1", 
                            "next": "24"
                        }, 
                        "start": {
                            "type": "start", 
                            "next": "20"
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
                        "73": {
                            "type": "line", 
                            "data": "14 This is the first line of the third dialogue.", 
                            "next": "74"
                        }, 
                        "start": {
                            "type": "start", 
                            "next": "72"
                        }, 
                        "74": {
                            "type": "line", 
                            "data": "24 This is the second line of the third dialogue.", 
                            "next": "end"
                        }, 
                        "end": {
                            "type": "end"
                        }, 
                        "72": {
                            "type": "call", 
                            "data": {
                                "end": {
                                    "type": "end"
                                }, 
                                "data": "assets/empty.png", 
                                "type": "avatar"
                            }, 
                            "next": "73"
                        }
                    }
                }, 
                "next": "11"
            }
        }
    }
}