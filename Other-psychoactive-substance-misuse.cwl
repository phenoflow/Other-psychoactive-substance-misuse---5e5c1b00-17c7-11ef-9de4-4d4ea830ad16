cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  episodic-other-psychoactive-substance-misuse---primary:
    run: episodic-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  other-psychoactive-substance-misuse-behaviour---primary:
    run: other-psychoactive-substance-misuse-behaviour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: episodic-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-dependence---primary:
    run: other-psychoactive-substance-misuse-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-behaviour---primary/output
  other-psychoactive-substance-misuse-drugrelated---primary:
    run: other-psychoactive-substance-misuse-drugrelated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-dependence---primary/output
  adverse-other-psychoactive-substance-misuse---primary:
    run: adverse-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-drugrelated---primary/output
  other-psychoactive-substance-misuse-infrequent---primary:
    run: other-psychoactive-substance-misuse-infrequent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: adverse-other-psychoactive-substance-misuse---primary/output
  previous-other-psychoactive-substance-misuse---primary:
    run: previous-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-infrequent---primary/output
  continuous-other-psychoactive-substance-misuse---primary:
    run: continuous-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: previous-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-amfetamine---primary:
    run: other-psychoactive-substance-misuse-amfetamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: continuous-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-cocaine---primary:
    run: other-psychoactive-substance-misuse-cocaine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-amfetamine---primary/output
  other-psychoactive-substance-misuse-misuser---primary:
    run: other-psychoactive-substance-misuse-misuser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-cocaine---primary/output
  other-psychoactive-substance-misuse-specified---primary:
    run: other-psychoactive-substance-misuse-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-misuser---primary/output
  other-psychoactive-substance-misuse-hypnotics---primary:
    run: other-psychoactive-substance-misuse-hypnotics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-specified---primary/output
  other-psychoactive-substance-misuse-heroin---primary:
    run: other-psychoactive-substance-misuse-heroin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-hypnotics---primary/output
  other-psychoactive-substance-misuse-treatment---primary:
    run: other-psychoactive-substance-misuse-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-heroin---primary/output
  other-psychoactive-substance-misuse-maintenance---primary:
    run: other-psychoactive-substance-misuse-maintenance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-treatment---primary/output
  other-psychoactive-substance-misuse-hallucinatory---primary:
    run: other-psychoactive-substance-misuse-hallucinatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-maintenance---primary/output
  other-psychoactive-substance-misuse-opiate---primary:
    run: other-psychoactive-substance-misuse-opiate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-hallucinatory---primary/output
  clinical-other-psychoactive-substance-misuse---primary:
    run: clinical-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-opiate---primary/output
  other-psychoactive-substance-misuse-sniffing---primary:
    run: other-psychoactive-substance-misuse-sniffing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: clinical-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-disordr---primary:
    run: other-psychoactive-substance-misuse-disordr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-sniffing---primary/output
  other-psychoactive-substance-misuse-cannabis---primary:
    run: other-psychoactive-substance-misuse-cannabis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-disordr---primary/output
  other-psychoactive-substance-misuse-hallucinogens---primary:
    run: other-psychoactive-substance-misuse-hallucinogens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-cannabis---primary/output
  other-psychoactive-substance-misuse-benzodiazepine---primary:
    run: other-psychoactive-substance-misuse-benzodiazepine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-hallucinogens---primary/output
  other-psychoactive-substance-misuse-declined---primary:
    run: other-psychoactive-substance-misuse-declined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-benzodiazepine---primary/output
  other-psychoactive-substance-misuse-stimulant---primary:
    run: other-psychoactive-substance-misuse-stimulant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-declined---primary/output
  other-psychoactive-substance-misuse-buprenorphine---primary:
    run: other-psychoactive-substance-misuse-buprenorphine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-stimulant---primary/output
  other-psychoactive-substance-misuse-stopped---primary:
    run: other-psychoactive-substance-misuse-stopped---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-buprenorphine---primary/output
  other-psychoactive-substance-misuse-abuse---primary:
    run: other-psychoactive-substance-misuse-abuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-stopped---primary/output
  other-psychoactive-substance-misuse-counselling---primary:
    run: other-psychoactive-substance-misuse-counselling---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-abuse---primary/output
  referral-other-psychoactive-substance-misuse---primary:
    run: referral-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-counselling---primary/output
  other-psychoactive-substance-misuse-antidepressant---primary:
    run: other-psychoactive-substance-misuse-antidepressant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: referral-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-druginduced---primary:
    run: other-psychoactive-substance-misuse-druginduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-antidepressant---primary/output
  other-psychoactive-substance-misuse-reinduction---primary:
    run: other-psychoactive-substance-misuse-reinduction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-druginduced---primary/output
  other-psychoactive-substance-misuse-remission---primary:
    run: other-psychoactive-substance-misuse-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-reinduction---primary/output
  other-psychoactive-substance-misuse-harmfl---primary:
    run: other-psychoactive-substance-misuse-harmfl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-remission---primary/output
  daily-other-psychoactive-substance-misuse---primary:
    run: daily-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-harmfl---primary/output
  anxiolytic-other-psychoactive-substance-misuse---primary:
    run: anxiolytic-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: daily-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-therapy---primary:
    run: other-psychoactive-substance-misuse-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: anxiolytic-other-psychoactive-substance-misuse---primary/output
  weekly-other-psychoactive-substance-misuse---primary:
    run: weekly-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-therapy---primary/output
  other-psychoactive-substance-misuse---primary:
    run: other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: weekly-other-psychoactive-substance-misuse---primary/output
  positive-other-psychoactive-substance-misuse---primary:
    run: positive-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-reaction---primary:
    run: other-psychoactive-substance-misuse-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: positive-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-methadone---primary:
    run: other-psychoactive-substance-misuse-methadone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-reaction---primary/output
  other-psychoactive-substance-misuse-crack---primary:
    run: other-psychoactive-substance-misuse-crack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-methadone---primary/output
  other-psychoactive-substance-misuse-history---primary:
    run: other-psychoactive-substance-misuse-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-crack---primary/output
  other-psychoactive-substance-misuse-delirium---primary:
    run: other-psychoactive-substance-misuse-delirium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-history---primary/output
  other-psychoactive-substance-misuse-tranquilliser---primary:
    run: other-psychoactive-substance-misuse-tranquilliser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-delirium---primary/output
  other-psychoactive-substance-misuse-ecstasy---primary:
    run: other-psychoactive-substance-misuse-ecstasy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-tranquilliser---primary/output
  other-psychoactive-substance-misuse-amphetamine---primary:
    run: other-psychoactive-substance-misuse-amphetamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-ecstasy---primary/output
  other-psychoactive-substance-misuse-detoxification---primary:
    run: other-psychoactive-substance-misuse-detoxification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-amphetamine---primary/output
  sedative-other-psychoactive-substance-misuse---primary:
    run: sedative-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-detoxification---primary/output
  initial-other-psychoactive-substance-misuse---primary:
    run: initial-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: sedative-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-paranoia---primary:
    run: other-psychoactive-substance-misuse-paranoia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: initial-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-barbiturate---primary:
    run: other-psychoactive-substance-misuse-barbiturate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-paranoia---primary/output
  solvent-other-psychoactive-substance-misuse---primary:
    run: solvent-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-barbiturate---primary/output
  other-psychoactive-substance-misuse-completed---primary:
    run: other-psychoactive-substance-misuse-completed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: solvent-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-assessment---primary:
    run: other-psychoactive-substance-misuse-assessment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-completed---primary/output
  other-psychoactive-substance-misuse-addict---primary:
    run: other-psychoactive-substance-misuse-addict---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-assessment---primary/output
  major-other-psychoactive-substance-misuse---primary:
    run: major-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-addict---primary/output
  vpersonal-other-psychoactive-substance-misuse---primary:
    run: vpersonal-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: major-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-activity---primary:
    run: other-psychoactive-substance-misuse-activity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: vpersonal-other-psychoactive-substance-misuse---primary/output
  opioid-other-psychoactive-substance-misuse---primary:
    run: opioid-other-psychoactive-substance-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-activity---primary/output
  other-psychoactive-substance-misuse-substitution---primary:
    run: other-psychoactive-substance-misuse-substitution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: opioid-other-psychoactive-substance-misuse---primary/output
  other-psychoactive-substance-misuse-monitoring---primary:
    run: other-psychoactive-substance-misuse-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-substitution---primary/output
  other-psychoactive-substance-misuse-injects---primary:
    run: other-psychoactive-substance-misuse-injects---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-monitoring---primary/output
  substance---primary:
    run: substance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: other-psychoactive-substance-misuse-injects---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: substance---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
