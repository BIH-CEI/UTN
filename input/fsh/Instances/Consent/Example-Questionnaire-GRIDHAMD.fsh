Alias: $gridhamd-answer-options-vs = http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs

Instance: GRIDHAMDQuestionnaire
InstanceOf: Questionnaire
Usage: #example

* status = #draft
* name = "GRIDHAMD"
* title = "GRID Hamilton Depression Rating Scale"
* description = "A structured clinical questionnaire for assessing depression severity."

* item[0].linkId = "Q1"
* item[0].text = "Depressed Mood This item assesses feelings of sadness, hopelessness, helplessness, and worthlessness. Note: this is not a global rating of depressive illness."
* item[0].type = #choice
* item[0].required = true
* item[0].repeats = false
* item[0].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs1"

* item[1].linkId = "Q2"
* item[1].text = "Guilt Guilt is defined as the sense of doing something bad or wrong, and is accompanied by feelings of regret or shame. Guilt is rated only if it is excessive or unrealistic"
* item[1].type = #choice
* item[1].required = true
* item[1].repeats = false
* item[1].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs2"

* item[2].linkId = "Q3"
* item[2].text = "Suicide"
* item[2].type = #choice
* item[2].required = true
* item[2].repeats = false
* item[2].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs3"


* item[3].linkId = "Q4"
* item[3].text = "Insomnia Early (Time to first falling asleep)"
* item[3].type = #choice
* item[3].required = true
* item[3].repeats = false
* item[3].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs4"

* item[4].linkId = "Q5"
* item[4].text = "Insomnia Middle (After having fallen asleep and until 2 hours prior to usual hour of waking)"
* item[4].type = #choice
* item[4].required = true
* item[4].repeats = false
* item[4].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs5"

* item[5].linkId = "Q6"
* item[5].text = "Insomnia Late (Within 2 hours of usual hour of waking) May stay awake during this time frame or may return to sleep after full awakening"
* item[5].type = #choice
* item[5].required = true
* item[5].repeats = false
* item[5].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs6"

* item[6].linkId = "Q7"
* item[6].text = "Work and Activities This item assesses loss of interest or pleasure and impairment in functioning at work inside and outside the home, leisure activities, and family and social relationships"
* item[6].type = #choice
* item[6].required = true
* item[6].repeats = false
* item[6].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs7"

* item[7].linkId = "Q8"
* item[7].text = "Psychomotor Retardation"
* item[7].type = #choice
* item[7].required = true
* item[7].repeats = false
* item[7].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs8"

* item[8].linkId = "Q9"
* item[8].text = "Psychomotor Agitation"
* item[8].type = #choice
* item[8].required = true
* item[8].repeats = false
* item[8].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs9"

* item[9].linkId = "Q10"
* item[9].text = "Anxiety, Psychic This item assesses apprehension, fear, panic, worry, as well as irritability. Note: Do not rate physical symptoms of panic attacks here. Rate in item 11: Anxiety, Somatic"
* item[9].type = #choice
* item[9].required = true
* item[9].repeats = false
* item[9].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs10"

* item[10].linkId = "Q11"
* item[10].text = "Anxiety, Somatic This item assesses physical symptoms associated with anxiety.  Gastrointestinal (dry mouth, gas, indigestion,  Diarrhea, constipation, stomach cramps, belching) Cardiovascular (heart pounding or racing) Respiratory (sighing, hyperventilation) Other (headaches, urinary frequency, sweating,  Lightheadedness)"
* item[10].type = #choice
* item[10].required = true
* item[10].repeats = false
* item[10].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs11"

* item[11].linkId = "Q12"
* item[11].text = "Loss of appetite (somatic symptoms, Gastrointestinal   This item assesses appetite (i.e., hunger, desire, enjoyment of food). Note: Do not rate other gastrointestinal symptoms here. Rate in item 11: Anxiety, Somatic."
* item[11].type = #choice
* item[11].required = true
* item[11].repeats = false
* item[11].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs12"

* item[12].linkId = "Q13"
* item[12].text = "Somatic symptoms, General  This item assesses tiredness, loss of energy, fatigue, and muscular aches and pains"
* item[12].type = #choice
* item[12].required = true
* item[12].repeats = false
* item[12].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs13"

* item[13].linkId = "Q14"
* item[13].text = "Sexual Interest (Genital Symptoms)  This item assesses loss of interest or pleasure in sex; not amount of activity or sexual performance"
* item[13].type = #choice
* item[13].required = true
* item[13].repeats = false
* item[13].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs14"

* item[14].linkId = "Q15"
* item[14].text = "Hypochondriasis  This item assesses unjustified preoccupation with having a general medical illness regardless of whether it is present or not."
* item[14].type = #choice
* item[14].required = true
* item[14].repeats = false
* item[14].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs15"

* item[15].linkId = "Q16/1"
* item[15].text = "Loss of weight A. When rating by history Compare to premorbid weight when rating at baseline; compare to previous visit if rating at follow-up"
* item[15].type = #choice
* item[15].required = true
* item[15].repeats = false
* item[15].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs16"

* item[16].linkId = "Q16/2"
* item[16].text = "Loss of weight - B. When actual weight changes are measured  Guidelines provided below apply to individuals Who are of average weight"
* item[16].type = #choice
* item[16].required = true
* item[16].repeats = false
* item[16].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs16"

* item[17].linkId = "Q17"
* item[17].text = "Insight -This item assesses pathological denial of illness. Do not consider denial that reflects cultural norms."
* item[17].type = #choice
* item[17].required = true
* item[17].repeats = false
* item[17].answerValueSet = "http://example.org/fhir/CodeSystem/gridhamd-answer-options-vs17"