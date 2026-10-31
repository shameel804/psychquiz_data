// python3 generate_pipeline.py prompts "Positive Psychology" --topic intro_what_is
// python3 generate_pipeline.py process "Positive Psychology"
// Read the file staging/INSTRUCTIONS.md and follow all instructions. For each task, read the prompt file, generate the quiz JSON following ALL rules, and write the output to the specified output file path.

class Constants {
    static const Map<String, List<Map<String, dynamic>>> allTypes = {
    // =====================================================
    // SPECIALIZED FIELDS
    // =====================================================
    "Forensic Psychology": [
      {
        'id': 'for_criminal',
        'title': "Criminal Psychology",
        'tier': 'free',
        'topics': [
          'Criminal behavior theories',
          'Psychopathy and antisocial behavior',
          'Criminal profiling',
          'Risk assessment',
        ],
      },
      {
        'id': 'for_legal',
        'title': "Psychology & the Legal System",
        'tier': 'free',
        'topics': [
          'Eyewitness testimony reliability',
          'Jury decision making',
          'Competency and insanity evaluations',
          'Expert witness role',
        ],
      },
      {
        'id': 'for_correctional',
        'title': "Correctional Psychology",
        'tier': 'vip',
        'topics': [
          'Prison psychology',
          'Rehabilitation programs',
          'Recidivism prediction',
          'Juvenile justice psychology',
        ],
      },
    ],

    "Military Psychology": [
      {
        'id': 'mil_combat',
        'title': "Combat Psychology",
        'tier': 'free',
        'topics': [
          'Combat stress reactions',
          'PTSD in military populations',
          'Resilience training programs',
          'Moral injury',
        ],
      },
      {
        'id': 'mil_assessment',
        'title': "Military Assessment & Selection",
        'tier': 'vip',
        'topics': [
          'Psychological fitness evaluations',
          'Leadership assessment',
          'Special operations selection',
          'Deployment readiness',
        ],
      },
    ],

    "Positive Psychology": [
      {
        'id': 'pos_wellbeing',
        'title': "Well-being & Flourishing",
        'tier': 'free',
        'topics': [
          'PERMA model (Seligman)',
          'Subjective well-being',
          'Hedonic vs. eudaimonic happiness',
          'Well-being interventions',
        ],
      },
      {
        'id': 'pos_strengths',
        'title': "Character Strengths & Virtues",
        'tier': 'free',
        'topics': [
          'VIA classification of strengths',
          'Strengths-based approach',
          'Gratitude and its effects',
          'Mindfulness and meditation',
        ],
      },
      {
        'id': 'pos_resilience',
        'title': "Resilience & Post-Traumatic Growth",
        'tier': 'vip',
        'topics': [
          'Resilience factors',
          'Post-traumatic growth model',
          'Coping and thriving',
          'Resilience interventions',
        ],
      },
      {
        'id': 'pos_flow',
        'title': "Flow & Optimal Experience",
        'tier': 'vip',
        'topics': [
          'Csikszentmihalyi\'s flow theory',
          'Conditions for flow',
          'Flow in work and education',
          'Measuring flow states',
        ],
      },
    ],

    "Community Psychology": [
      {
        'id': 'comm_prevention',
        'title': "Prevention & Early Intervention",
        'tier': 'free',
        'topics': [
          'Primary, secondary, tertiary prevention',
          'Community needs assessment',
          'Program development and evaluation',
          'Empowerment and advocacy',
        ],
      },
      {
        'id': 'comm_social',
        'title': "Social Justice & Equity",
        'tier': 'vip',
        'topics': [
          'Health disparities',
          'Community organizing',
          'Policy advocacy',
          'Participatory action research',
        ],
      },
    ],

    "Neuropsychology": [
      {
        'id': 'neuro_assessment',
        'title': "Neuropsychological Assessment",
        'tier': 'free',
        'topics': [
          'Common neuropsychological tests',
          'Assessment of memory and attention',
          'Executive function testing',
          'Report writing and interpretation',
        ],
      },
      {
        'id': 'neuro_disorders',
        'title': "Neuropsychological Disorders",
        'tier': 'free',
        'topics': [
          'Traumatic brain injury',
          'Stroke and cerebrovascular disorders',
          'Neurodegenerative diseases',
          'Epilepsy and seizure disorders',
        ],
      },
      {
        'id': 'neuro_rehab',
        'title': "Cognitive Rehabilitation",
        'tier': 'vip',
        'topics': [
          'Rehabilitation strategies',
          'Compensatory techniques',
          'Technology-assisted rehabilitation',
          'Outcome measurement',
        ],
      },
    ],

    "Counseling Psychology": [
      {
        'id': 'coun_skills',
        'title': "Core Counseling Skills",
        'tier': 'free',
        'topics': [
          'Active listening',
          'Empathic responding',
          'Open and closed questioning',
          'Summarizing and reflecting',
        ],
      },
      {
        'id': 'coun_modalities',
        'title': "Counseling Modalities",
        'tier': 'free',
        'topics': [
          'Individual counseling',
          'Career counseling',
          'Multicultural counseling',
          'Online and telehealth counseling',
        ],
      },
      {
        'id': 'coun_crisis',
        'title': "Crisis & Trauma Counseling",
        'tier': 'vip',
        'topics': [
          'Crisis intervention models',
          'Trauma-informed care principles',
          'Grief and loss counseling',
          'Disaster mental health',
        ],
      },
    ],
  
  };

}
