cwlVersion: v1.0
class: Workflow
inputs:
  mobyfile: File
  mobycountfilename: string
  illiadfile: File
  illiadcountfilename: string
  aggregatecountfilename: string
  licensefile: File
  licensetextfilename: string
  specfile: File
  spectextfilename: string
  licensetextfile: File
  licensecountfilename: string
  spectextfile: File
  speccountfilename: string
  pdfaggregatecountfilename: string
  totalcountfilename: string

outputs:
   licenseconvertout:
      type: File
      outputSource: licenseconvert/licenseconvertout
   licensecountout:
      type: File
      outputSource: licensecount/licensecountout
   speccountout:
      type: File
      outputSource: speccount/speccountout
   specconvertout:
      type: File
      outputSource: specconvert/specconvertout
   mobycountout:
      type: File
      outputSource: mobycount/mobycountout
   illiadcountout:
      type: File
      outputSource: illiadcount/illiadcountout
   aggregatecountout:
      type: File
      outputSource: aggregator/aggregatecountout
   pdfaggregatecountout:
      type: File
      outputSource: pdfaggregator/pdfaggregatecountout
   totalaggregatorout:
      type: File
      outputSource: totalaggregator/totalcountout

steps:
  licenseconvert:
    run: license-convert.cwl
    in:
      licensefile: licensefile
      licensetextfilename: licensetextfilename
    out:
      [licenseconvertout]
  licensecount:
    run: license-count.cwl
    in:
      licensetextfile:
        source: licenseconvert/licenseconvertout
      licensecountfilename: licensecountfilename
    out:
      [licensecountout]
  specconvert:
    run: spec-convert.cwl
    in:
      specfile: specfile
      spectextfilename: spectextfilename
    out:
      [specconvertout]
  speccount:
    run: spec-count.cwl
    in:
      spectextfile:
        source: specconvert/specconvertout
      speccountfilename: speccountfilename
    out:
      [speccountout]
  mobycount:
    run: moby-count.cwl
    in:
      mobyfile: mobyfile
      mobycountfilename: mobycountfilename
    out:
      [mobycountout]
  illiadcount:
    run: illiad-count.cwl
    in:
      illiadfile: illiadfile
      illiadcountfilename: illiadcountfilename
    out:
      [illiadcountout]
  aggregator:
    run: word-aggregator.cwl
    in:
      mobycountfile:
        source: mobycount/mobycountout
      illiadcountfile:
        source: illiadcount/illiadcountout
      aggregatecountfilename: aggregatecountfilename
    out:
      [aggregatecountout]
  pdfaggregator:
    run: pdf-aggregator.cwl
    in:
      licensecountfile:
        source: licensecount/licensecountout
      speccountfile:
        source: speccount/speccountout
      pdfaggregatecountfilename: pdfaggregatecountfilename
    out:
      [pdfaggregatecountout]
  totalaggregator:
    run: total-aggregator.cwl
    in:
      wordcountfile:
        source: aggregator/aggregatecountout
      pdfcountfile:
        source: pdfaggregator/pdfaggregatecountout
      totalcountfilename: totalcountfilename
    out:
      [totalcountout]
