{
    "$graph": [
        {
            "class": "CommandLineTool",
            "hints": {
                "DockerRequirement": {
                    "dockerPull": "ryanratcliff/word_count"
                }
            },
            "inputs": {
                "illiadfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-i",
                        "position": 1
                    }
                },
                "illiadcountfilename": {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "-o",
                        "position": 2
                    }
                }
            },
            "outputs": {
                "illiadcountout": {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.illiadcountfilename)"
                    }
                }
            },
            "id": "#illiad-count.cwl"
        },
        {
            "class": "CommandLineTool",
            "hints": {
                "DockerRequirement": {
                    "dockerPull": "kadock/pdftotext"
                }
            },
            "inputs": {
                "licensefile": {
                    "type": "File",
                    "inputBinding": {
                        "position": 1
                    }
                },
                "licensetextfilename": {
                    "type": "string",
                    "inputBinding": {
                        "position": 2
                    }
                }
            },
            "outputs": {
                "licenseconvertout": {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.licensetextfilename)"
                    }
                }
            },
            "id": "#license-convert.cwl"
        },
        {
            "class": "CommandLineTool",
            "hints": {
                "DockerRequirement": {
                    "dockerPull": "ryanratcliff/word_count"
                }
            },
            "inputs": {
                "licensetextfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-i",
                        "position": 1
                    }
                },
                "licensecountfilename": {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "-o",
                        "position": 2
                    }
                }
            },
            "outputs": {
                "licensecountout": {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.licensecountfilename)"
                    }
                }
            },
            "id": "#license-count.cwl"
        },
        {
            "class": "CommandLineTool",
            "hints": {
                "DockerRequirement": {
                    "dockerPull": "ryanratcliff/word_count"
                }
            },
            "inputs": {
                "mobyfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-i",
                        "position": 1
                    }
                },
                "mobycountfilename": {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "-o",
                        "position": 2
                    }
                }
            },
            "outputs": {
                "mobycountout": {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.mobycountfilename)"
                    }
                }
            },
            "id": "#moby-count.cwl"
        },
        {
            "class": "CommandLineTool",
            "hints": {
                "DockerRequirement": {
                    "dockerPull": "ryanratcliff/word_count_combine"
                }
            },
            "inputs": {
                "licensecountfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-s",
                        "position": 1
                    }
                },
                "speccountfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-l",
                        "position": 2
                    }
                },
                "pdfaggregatecountfilename": {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "-o",
                        "position": 3
                    }
                }
            },
            "outputs": {
                "pdfaggregatecountout": {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.pdfaggregatecountfilename)"
                    }
                }
            },
            "id": "#pdf-aggregator.cwl"
        },
        {
            "class": "CommandLineTool",
            "hints": {
                "DockerRequirement": {
                    "dockerPull": "kadock/pdftotext"
                }
            },
            "inputs": {
                "specfile": {
                    "type": "File",
                    "inputBinding": {
                        "position": 1
                    }
                },
                "spectextfilename": {
                    "type": "string",
                    "inputBinding": {
                        "position": 2
                    }
                }
            },
            "outputs": {
                "specconvertout": {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.spectextfilename)"
                    }
                }
            },
            "id": "#spec-convert.cwl"
        },
        {
            "class": "CommandLineTool",
            "hints": {
                "DockerRequirement": {
                    "dockerPull": "ryanratcliff/word_count"
                }
            },
            "inputs": {
                "spectextfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-i",
                        "position": 1
                    }
                },
                "speccountfilename": {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "-o",
                        "position": 2
                    }
                }
            },
            "outputs": {
                "speccountout": {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.speccountfilename)"
                    }
                }
            },
            "id": "#spec-count.cwl"
        },
        {
            "class": "CommandLineTool",
            "hints": {
                "DockerRequirement": {
                    "dockerPull": "ryanratcliff/word_count_combine"
                }
            },
            "inputs": {
                "wordcountfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-s",
                        "position": 1
                    }
                },
                "pdfcountfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-l",
                        "position": 2
                    }
                },
                "totalcountfilename": {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "-o",
                        "position": 3
                    }
                }
            },
            "outputs": {
                "totalcountout": {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.totalcountfilename)"
                    }
                }
            },
            "id": "#total-aggregator.cwl"
        },
        {
            "class": "CommandLineTool",
            "hints": {
                "DockerRequirement": {
                    "dockerPull": "ryanratcliff/word_count_combine"
                }
            },
            "inputs": {
                "mobycountfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-s",
                        "position": 1
                    }
                },
                "illiadcountfile": {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-l",
                        "position": 2
                    }
                },
                "aggregatecountfilename": {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "-o",
                        "position": 3
                    }
                }
            },
            "outputs": {
                "aggregatecountout": {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.aggregatecountfilename)"
                    }
                }
            },
            "id": "#word-aggregator.cwl"
        },
        {
            "class": "Workflow",
            "inputs": [
                {
                    "type": "string",
                    "id": "#main/aggregatecountfilename"
                },
                {
                    "type": "string",
                    "id": "#main/illiadcountfilename"
                },
                {
                    "type": "File",
                    "id": "#main/illiadfile"
                },
                {
                    "type": "string",
                    "id": "#main/licensecountfilename"
                },
                {
                    "type": "File",
                    "id": "#main/licensefile"
                },
                {
                    "type": "File",
                    "id": "#main/licensetextfile"
                },
                {
                    "type": "string",
                    "id": "#main/licensetextfilename"
                },
                {
                    "type": "string",
                    "id": "#main/mobycountfilename"
                },
                {
                    "type": "File",
                    "id": "#main/mobyfile"
                },
                {
                    "type": "string",
                    "id": "#main/pdfaggregatecountfilename"
                },
                {
                    "type": "string",
                    "id": "#main/speccountfilename"
                },
                {
                    "type": "File",
                    "id": "#main/specfile"
                },
                {
                    "type": "File",
                    "id": "#main/spectextfile"
                },
                {
                    "type": "string",
                    "id": "#main/spectextfilename"
                },
                {
                    "type": "string",
                    "id": "#main/totalcountfilename"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#main/aggregator/aggregatecountout",
                    "id": "#main/aggregatecountout"
                },
                {
                    "type": "File",
                    "outputSource": "#main/illiadcount/illiadcountout",
                    "id": "#main/illiadcountout"
                },
                {
                    "type": "File",
                    "outputSource": "#main/licenseconvert/licenseconvertout",
                    "id": "#main/licenseconvertout"
                },
                {
                    "type": "File",
                    "outputSource": "#main/licensecount/licensecountout",
                    "id": "#main/licensecountout"
                },
                {
                    "type": "File",
                    "outputSource": "#main/mobycount/mobycountout",
                    "id": "#main/mobycountout"
                },
                {
                    "type": "File",
                    "outputSource": "#main/pdfaggregator/pdfaggregatecountout",
                    "id": "#main/pdfaggregatecountout"
                },
                {
                    "type": "File",
                    "outputSource": "#main/specconvert/specconvertout",
                    "id": "#main/specconvertout"
                },
                {
                    "type": "File",
                    "outputSource": "#main/speccount/speccountout",
                    "id": "#main/speccountout"
                },
                {
                    "type": "File",
                    "outputSource": "#main/totalaggregator/totalcountout",
                    "id": "#main/totalaggregatorout"
                }
            ],
            "steps": [
                {
                    "run": "#word-aggregator.cwl",
                    "in": [
                        {
                            "source": "#main/aggregatecountfilename",
                            "id": "#main/aggregator/aggregatecountfilename"
                        },
                        {
                            "source": "#main/illiadcount/illiadcountout",
                            "id": "#main/aggregator/illiadcountfile"
                        },
                        {
                            "source": "#main/mobycount/mobycountout",
                            "id": "#main/aggregator/mobycountfile"
                        }
                    ],
                    "out": [
                        "#main/aggregator/aggregatecountout"
                    ],
                    "id": "#main/aggregator"
                },
                {
                    "run": "#illiad-count.cwl",
                    "in": [
                        {
                            "source": "#main/illiadcountfilename",
                            "id": "#main/illiadcount/illiadcountfilename"
                        },
                        {
                            "source": "#main/illiadfile",
                            "id": "#main/illiadcount/illiadfile"
                        }
                    ],
                    "out": [
                        "#main/illiadcount/illiadcountout"
                    ],
                    "id": "#main/illiadcount"
                },
                {
                    "run": "#license-convert.cwl",
                    "in": [
                        {
                            "source": "#main/licensefile",
                            "id": "#main/licenseconvert/licensefile"
                        },
                        {
                            "source": "#main/licensetextfilename",
                            "id": "#main/licenseconvert/licensetextfilename"
                        }
                    ],
                    "out": [
                        "#main/licenseconvert/licenseconvertout"
                    ],
                    "id": "#main/licenseconvert"
                },
                {
                    "run": "#license-count.cwl",
                    "in": [
                        {
                            "source": "#main/licensecountfilename",
                            "id": "#main/licensecount/licensecountfilename"
                        },
                        {
                            "source": "#main/licenseconvert/licenseconvertout",
                            "id": "#main/licensecount/licensetextfile"
                        }
                    ],
                    "out": [
                        "#main/licensecount/licensecountout"
                    ],
                    "id": "#main/licensecount"
                },
                {
                    "run": "#moby-count.cwl",
                    "in": [
                        {
                            "source": "#main/mobycountfilename",
                            "id": "#main/mobycount/mobycountfilename"
                        },
                        {
                            "source": "#main/mobyfile",
                            "id": "#main/mobycount/mobyfile"
                        }
                    ],
                    "out": [
                        "#main/mobycount/mobycountout"
                    ],
                    "id": "#main/mobycount"
                },
                {
                    "run": "#pdf-aggregator.cwl",
                    "in": [
                        {
                            "source": "#main/licensecount/licensecountout",
                            "id": "#main/pdfaggregator/licensecountfile"
                        },
                        {
                            "source": "#main/pdfaggregatecountfilename",
                            "id": "#main/pdfaggregator/pdfaggregatecountfilename"
                        },
                        {
                            "source": "#main/speccount/speccountout",
                            "id": "#main/pdfaggregator/speccountfile"
                        }
                    ],
                    "out": [
                        "#main/pdfaggregator/pdfaggregatecountout"
                    ],
                    "id": "#main/pdfaggregator"
                },
                {
                    "run": "#spec-convert.cwl",
                    "in": [
                        {
                            "source": "#main/specfile",
                            "id": "#main/specconvert/specfile"
                        },
                        {
                            "source": "#main/spectextfilename",
                            "id": "#main/specconvert/spectextfilename"
                        }
                    ],
                    "out": [
                        "#main/specconvert/specconvertout"
                    ],
                    "id": "#main/specconvert"
                },
                {
                    "run": "#spec-count.cwl",
                    "in": [
                        {
                            "source": "#main/speccountfilename",
                            "id": "#main/speccount/speccountfilename"
                        },
                        {
                            "source": "#main/specconvert/specconvertout",
                            "id": "#main/speccount/spectextfile"
                        }
                    ],
                    "out": [
                        "#main/speccount/speccountout"
                    ],
                    "id": "#main/speccount"
                },
                {
                    "run": "#total-aggregator.cwl",
                    "in": [
                        {
                            "source": "#main/pdfaggregator/pdfaggregatecountout",
                            "id": "#main/totalaggregator/pdfcountfile"
                        },
                        {
                            "source": "#main/totalcountfilename",
                            "id": "#main/totalaggregator/totalcountfilename"
                        },
                        {
                            "source": "#main/aggregator/aggregatecountout",
                            "id": "#main/totalaggregator/wordcountfile"
                        }
                    ],
                    "out": [
                        "#main/totalaggregator/totalcountout"
                    ],
                    "id": "#main/totalaggregator"
                }
            ],
            "id": "#main"
        }
    ],
    "cwlVersion": "v1.0"
}
