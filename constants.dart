// Read the file staging/INSTRUCTIONS.md and follow all instructions. For each task, read the prompt file, generate the quiz JSON following ALL rules, and write the output to the specified output file path.

class Constants {
  static const Map<String, List<Map<String, dynamic>>> allTypes = {
    // =====================================================
    // FOUNDATIONS OF PSYCHOLOGY
    // =====================================================
    "Introduction to Psychology": [
      {
        'id': 'intro_what_is',
        'title': "What is Psychology?",
        'tier': 'free',
        'topics': [
          'Definition and scope of psychology',
          'Psychology as a science',
          'Goals of psychology: describe, explain, predict, change',
          'Subfields of psychology',
        ],
      },
      {
        'id': 'intro_perspectives',
        'title': "Psychological Perspectives",
        'tier': 'free',
        'topics': [
          'Biological perspective',
          'Cognitive perspective',
          'Behavioral perspective',
          'Humanistic perspective',
          'Psychodynamic perspective',
          'Sociocultural perspective',
        ],
      },
      {
        'id': 'intro_careers',
        'title': "Careers in Psychology",
        'tier': 'free',
        'topics': [
          'Clinical and counseling careers',
          'Research and academic paths',
          'Applied psychology roles',
          'Difference between psychologist and psychiatrist',
        ],
      },
      {
        'id': 'intro_ethics',
        'title': "Ethics in Psychology",
        'tier': 'free',
        'topics': [
          'APA ethical principles',
          'Informed consent',
          'Confidentiality and its limits',
          'Ethical issues in research',
        ],
      },
      {
        'id': 'intro_critical',
        'title': "Critical Thinking in Psychology",
        'tier': 'vip',
        'topics': [
          'Scientific skepticism',
          'Evaluating psychological claims',
          'Common myths vs. facts',
          'Evidence-based thinking',
        ],
      },
    ],

    "History of Psychology": [
      {
        'id': 'hist_origins',
        'title': "Origins & Philosophical Roots",
        'tier': 'free',
        'topics': [
          'Ancient Greek contributions',
          'Mind-body problem',
          'Empiricism vs. rationalism',
          'Descartes, Locke, and early thinkers',
        ],
      },
      {
        'id': 'hist_schools',
        'title': "Schools of Thought",
        'tier': 'free',
        'topics': [
          'Structuralism (Wundt, Titchener)',
          'Functionalism (William James)',
          'Gestalt psychology',
          'Behaviorism (Watson, Skinner)',
          'Psychoanalysis (Freud)',
          'Humanistic psychology (Maslow, Rogers)',
        ],
      },
      {
        'id': 'hist_modern',
        'title': "Modern Psychology",
        'tier': 'free',
        'topics': [
          'Cognitive revolution',
          'Neuroscience breakthroughs',
          'Positive psychology movement',
          'Cultural and diversity shifts',
        ],
      },
      {
        'id': 'hist_pioneers',
        'title': "Key Pioneers & Experiments",
        'tier': 'vip',
        'topics': [
          'Milgram obedience experiment',
          'Stanford prison experiment',
          'Pavlov\'s conditioning',
          'Harlow\'s attachment studies',
          'Little Albert experiment',
        ],
      },
      {
        'id': 'hist_evolution',
        'title': "Evolution of Psychological Practice",
        'tier': 'vip',
        'topics': [
          'From asylums to community care',
          'DSM development and revisions',
          'Evidence-based practice movement',
          'Technology in modern psychology',
        ],
      },
    ],

    "Research Methods in Psychology": [
      {
        'id': 'rm_scientific',
        'title': "The Scientific Method",
        'tier': 'free',
        'topics': [
          'Hypothesis formation',
          'Operationalization of variables',
          'Types of variables (IV, DV, confounding)',
          'Experimental control',
        ],
      },
      {
        'id': 'rm_designs',
        'title': "Research Designs",
        'tier': 'free',
        'topics': [
          'Experimental vs. correlational',
          'Longitudinal vs. cross-sectional',
          'Case studies and surveys',
          'Naturalistic observation',
        ],
      },
      {
        'id': 'rm_sampling',
        'title': "Sampling & Data Collection",
        'tier': 'free',
        'topics': [
          'Random sampling methods',
          'Sample size and representativeness',
          'Surveys and questionnaires',
          'Interview techniques',
        ],
      },
      {
        'id': 'rm_stats',
        'title': "Basic Statistics",
        'tier': 'vip',
        'topics': [
          'Descriptive statistics',
          'Inferential statistics',
          'Correlation vs. causation',
          'Statistical significance',
        ],
      },
      {
        'id': 'rm_ethics',
        'title': "Research Ethics",
        'tier': 'vip',
        'topics': [
          'Institutional Review Boards (IRB)',
          'Deception in research',
          'Animal research ethics',
          'Replication crisis',
        ],
      },
    ],

    "Biological Bases of Behavior": [
      {
        'id': 'bio_neurons',
        'title': "Neurons & Neural Communication",
        'tier': 'free',
        'topics': [
          'Neuron structure and types',
          'Action potential',
          'Synaptic transmission',
          'Neurotransmitters and their functions',
        ],
      },
      {
        'id': 'bio_brain',
        'title': "Brain Structure & Function",
        'tier': 'free',
        'topics': [
          'Major brain regions and their roles',
          'Cerebral cortex and lobes',
          'Limbic system',
          'Brain lateralization',
        ],
      },
      {
        'id': 'bio_nervous',
        'title': "Nervous System",
        'tier': 'free',
        'topics': [
          'Central vs. peripheral nervous system',
          'Sympathetic vs. parasympathetic',
          'Somatic vs. autonomic',
          'Reflex arcs',
        ],
      },
      {
        'id': 'bio_endocrine',
        'title': "Endocrine System",
        'tier': 'vip',
        'topics': [
          'Hormones and behavior',
          'Hypothalamus-pituitary axis',
          'Stress hormones (cortisol, adrenaline)',
          'Endocrine disorders and psychological effects',
        ],
      },
      {
        'id': 'bio_genetics',
        'title': "Genetics & Behavior",
        'tier': 'vip',
        'topics': [
          'Nature vs. nurture debate',
          'Twin studies and heritability',
          'Epigenetics',
          'Behavioral genetics',
        ],
      },
      {
        'id': 'bio_imaging',
        'title': "Brain Imaging Techniques",
        'tier': 'vip',
        'topics': [
          'fMRI and PET scans',
          'EEG and MEG',
          'CT and MRI',
          'Applications in clinical and research psychology',
        ],
      },
    ],

    "Sensation & Perception": [
      {
        'id': 'sp_vision',
        'title': "Vision",
        'tier': 'free',
        'topics': [
          'Structure of the eye',
          'Visual processing pathways',
          'Color perception theories',
          'Depth perception and visual illusions',
        ],
      },
      {
        'id': 'sp_hearing',
        'title': "Hearing & Other Senses",
        'tier': 'free',
        'topics': [
          'Auditory processing',
          'Taste and smell',
          'Touch and pain perception',
          'Proprioception and vestibular sense',
        ],
      },
      {
        'id': 'sp_perception',
        'title': "Perceptual Processes",
        'tier': 'free',
        'topics': [
          'Top-down vs. bottom-up processing',
          'Gestalt principles of organization',
          'Perceptual constancies',
          'Selective attention and inattentional blindness',
        ],
      },
      {
        'id': 'sp_thresholds',
        'title': "Thresholds & Signal Detection",
        'tier': 'vip',
        'topics': [
          'Absolute and difference thresholds',
          'Weber\'s law',
          'Signal detection theory',
          'Sensory adaptation',
        ],
      },
    ],

    "States of Consciousness": [
      {
        'id': 'con_sleep',
        'title': "Sleep & Dreams",
        'tier': 'free',
        'topics': [
          'Sleep stages and cycles',
          'REM vs. NREM sleep',
          'Theories of dreaming',
          'Sleep disorders (insomnia, narcolepsy, apnea)',
        ],
      },
      {
        'id': 'con_hypnosis',
        'title': "Hypnosis & Meditation",
        'tier': 'free',
        'topics': [
          'Theories of hypnosis',
          'Meditation and mindfulness',
          'Altered states of consciousness',
          'Clinical applications',
        ],
      },
      {
        'id': 'con_drugs',
        'title': "Psychoactive Substances",
        'tier': 'vip',
        'topics': [
          'Categories: depressants, stimulants, hallucinogens',
          'Mechanisms of drug action',
          'Tolerance, dependence, and withdrawal',
          'Substance use disorders',
        ],
      },
      {
        'id': 'con_awareness',
        'title': "Levels of Awareness",
        'tier': 'vip',
        'topics': [
          'Conscious vs. unconscious processing',
          'Automatic vs. controlled processing',
          'Flow states',
          'Circadian rhythms',
        ],
      },
    ],

    // =====================================================
    // CLINICAL & ABNORMAL PSYCHOLOGY
    // =====================================================
    "Psychopathology": [
      {
        'id': 'pp_classification',
        'title': "Classification of Disorders",
        'tier': 'free',
        'topics': [
          'DSM-5 classification system',
          'ICD-11 comparison',
          'Dimensional vs. categorical approaches',
          'Comorbidity and differential diagnosis',
        ],
      },
      {
        'id': 'pp_models',
        'title': "Models of Abnormality",
        'tier': 'free',
        'topics': [
          'Medical/biological model',
          'Psychological models (cognitive, behavioral, psychodynamic)',
          'Sociocultural model',
          'Biopsychosocial model',
        ],
      },
      {
        'id': 'pp_assessment',
        'title': "Clinical Assessment",
        'tier': 'free',
        'topics': [
          'Clinical interview techniques',
          'Psychological testing',
          'Behavioral observation',
          'Mental status examination',
        ],
      },
      {
        'id': 'pp_risk',
        'title': "Risk Factors & Etiology",
        'tier': 'vip',
        'topics': [
          'Genetic predisposition',
          'Environmental stressors',
          'Protective and risk factors',
          'Diathesis-stress model',
        ],
      },
      {
        'id': 'pp_stigma',
        'title': "Stigma & Mental Health",
        'tier': 'vip',
        'topics': [
          'Public vs. self-stigma',
          'Impact on treatment seeking',
          'Anti-stigma interventions',
          'Cultural attitudes toward mental illness',
        ],
      },
    ],

    "Clinical Assessment": [
      {
        'id': 'ca_interview',
        'title': "Clinical Interviewing",
        'tier': 'free',
        'topics': [
          'Structured vs. unstructured interviews',
          'Motivational interviewing',
          'Mental status examination',
          'Building rapport',
        ],
      },
      {
        'id': 'ca_testing',
        'title': "Psychological Testing",
        'tier': 'free',
        'topics': [
          'Intelligence tests (WAIS, WISC)',
          'Personality inventories (MMPI, NEO-PI)',
          'Projective tests (Rorschach, TAT)',
          'Neuropsychological batteries',
        ],
      },
      {
        'id': 'ca_behavioral',
        'title': "Behavioral Assessment",
        'tier': 'free',
        'topics': [
          'Functional behavior analysis',
          'Self-monitoring techniques',
          'Behavioral rating scales',
          'Direct observation methods',
        ],
      },
      {
        'id': 'ca_formulation',
        'title': "Case Formulation",
        'tier': 'vip',
        'topics': [
          'Integrating assessment data',
          'Developing treatment plans',
          'Prognosis estimation',
          'Communicating findings',
        ],
      },
    ],

    "Therapeutic Approaches": [
      {
        'id': 'ta_cbt',
        'title': "Cognitive Behavioral Therapy",
        'tier': 'free',
        'topics': [
          'Cognitive distortions and restructuring',
          'Behavioral activation',
          'Exposure therapy techniques',
          'Thought records and behavioral experiments',
        ],
      },
      {
        'id': 'ta_psychodynamic',
        'title': "Psychodynamic Therapy",
        'tier': 'free',
        'topics': [
          'Free association and dream analysis',
          'Transference and countertransference',
          'Defense mechanisms',
          'Object relations theory',
        ],
      },
      {
        'id': 'ta_humanistic',
        'title': "Humanistic & Existential Therapy",
        'tier': 'free',
        'topics': [
          'Person-centered therapy (Rogers)',
          'Gestalt therapy techniques',
          'Existential anxiety and meaning-making',
          'Unconditional positive regard',
        ],
      },
      {
        'id': 'ta_third_wave',
        'title': "Third-Wave Therapies",
        'tier': 'vip',
        'topics': [
          'Dialectical Behavior Therapy (DBT)',
          'Acceptance and Commitment Therapy (ACT)',
          'Mindfulness-Based Cognitive Therapy (MBCT)',
          'Compassion-focused therapy',
        ],
      },
      {
        'id': 'ta_group',
        'title': "Group & Family Therapy",
        'tier': 'vip',
        'topics': [
          'Group therapy dynamics',
          'Structural family therapy',
          'Systemic approaches',
          'Couples therapy techniques',
        ],
      },
    ],

    "Psychopharmacology": [
      {
        'id': 'pharm_antidepressants',
        'title': "Antidepressants",
        'tier': 'free',
        'topics': [
          'SSRIs and SNRIs',
          'Tricyclic antidepressants',
          'MAO inhibitors',
          'Mechanism of action and side effects',
        ],
      },
      {
        'id': 'pharm_antipsychotics',
        'title': "Antipsychotics",
        'tier': 'free',
        'topics': [
          'Typical vs. atypical antipsychotics',
          'Dopamine hypothesis',
          'Tardive dyskinesia and side effects',
          'Clinical applications',
        ],
      },
      {
        'id': 'pharm_anxiolytics',
        'title': "Anxiolytics & Mood Stabilizers",
        'tier': 'vip',
        'topics': [
          'Benzodiazepines',
          'Buspirone',
          'Lithium and mood stabilizers',
          'Anticonvulsants in psychiatry',
        ],
      },
      {
        'id': 'pharm_principles',
        'title': "Pharmacological Principles",
        'tier': 'vip',
        'topics': [
          'Pharmacokinetics and pharmacodynamics',
          'Drug interactions',
          'Placebo effect',
          'Personalized medicine',
        ],
      },
    ],

    "Mood Disorders": [
      {
        'id': 'mood_depression',
        'title': "Major Depressive Disorder",
        'tier': 'free',
        'topics': [
          'Diagnostic criteria and symptoms',
          'Theories of depression (Beck, Seligman)',
          'Biological and cognitive factors',
          'Treatment approaches',
        ],
      },
      {
        'id': 'mood_bipolar',
        'title': "Bipolar Disorders",
        'tier': 'free',
        'topics': [
          'Bipolar I vs. Bipolar II',
          'Manic and hypomanic episodes',
          'Cyclothymic disorder',
          'Mood stabilizer treatments',
        ],
      },
      {
        'id': 'mood_persistent',
        'title': "Persistent Depressive & Related Disorders",
        'tier': 'vip',
        'topics': [
          'Dysthymia/persistent depressive disorder',
          'Seasonal affective disorder',
          'Premenstrual dysphoric disorder',
          'Disruptive mood dysregulation',
        ],
      },
      {
        'id': 'mood_suicide',
        'title': "Suicide & Self-Harm",
        'tier': 'vip',
        'topics': [
          'Risk factors and warning signs',
          'Assessment tools',
          'Prevention strategies',
          'Crisis intervention protocols',
        ],
      },
    ],

    "Anxiety Disorders": [
      {
        'id': 'anx_gad',
        'title': "Generalized Anxiety & Panic Disorder",
        'tier': 'free',
        'topics': [
          'GAD symptoms and diagnostic criteria',
          'Panic attacks and panic disorder',
          'Cognitive models of anxiety',
          'Relaxation and breathing techniques',
        ],
      },
      {
        'id': 'anx_phobias',
        'title': "Phobias",
        'tier': 'free',
        'topics': [
          'Specific phobias',
          'Social anxiety disorder',
          'Agoraphobia',
          'Exposure therapy for phobias',
        ],
      },
      {
        'id': 'anx_ocd',
        'title': "OCD & Related Disorders",
        'tier': 'free',
        'topics': [
          'Obsessive-compulsive disorder',
          'Body dysmorphic disorder',
          'Hoarding disorder',
          'Trichotillomania',
        ],
      },
      {
        'id': 'anx_trauma',
        'title': "Trauma & Stressor-Related Disorders",
        'tier': 'vip',
        'topics': [
          'PTSD symptoms and diagnosis',
          'Acute stress disorder',
          'Adjustment disorders',
          'Complex PTSD',
        ],
      },
    ],

    "Personality Disorders": [
      {
        'id': 'pd_cluster_a',
        'title': "Cluster A: Odd/Eccentric",
        'tier': 'free',
        'topics': [
          'Paranoid personality disorder',
          'Schizoid personality disorder',
          'Schizotypal personality disorder',
          'Distinguishing from psychotic disorders',
        ],
      },
      {
        'id': 'pd_cluster_b',
        'title': "Cluster B: Dramatic/Erratic",
        'tier': 'free',
        'topics': [
          'Borderline personality disorder',
          'Narcissistic personality disorder',
          'Antisocial personality disorder',
          'Histrionic personality disorder',
        ],
      },
      {
        'id': 'pd_cluster_c',
        'title': "Cluster C: Anxious/Fearful",
        'tier': 'free',
        'topics': [
          'Avoidant personality disorder',
          'Dependent personality disorder',
          'Obsessive-compulsive personality disorder',
          'Treatment challenges',
        ],
      },
      {
        'id': 'pd_treatment',
        'title': "Treatment of Personality Disorders",
        'tier': 'vip',
        'topics': [
          'DBT for borderline personality',
          'Schema therapy',
          'Mentalization-based treatment',
          'Therapeutic alliance challenges',
        ],
      },
    ],

    "Psychotic Disorders": [
      {
        'id': 'psy_schizophrenia',
        'title': "Schizophrenia",
        'tier': 'free',
        'topics': [
          'Positive and negative symptoms',
          'Diagnostic criteria (DSM-5)',
          'Neurodevelopmental hypothesis',
          'Dopamine and glutamate theories',
        ],
      },
      {
        'id': 'psy_other',
        'title': "Other Psychotic Disorders",
        'tier': 'free',
        'topics': [
          'Schizoaffective disorder',
          'Brief psychotic disorder',
          'Delusional disorder',
          'Substance-induced psychosis',
        ],
      },
      {
        'id': 'psy_treatment',
        'title': "Treatment & Recovery",
        'tier': 'vip',
        'topics': [
          'Antipsychotic medications',
          'Psychosocial interventions',
          'Family psychoeducation',
          'Recovery model and rehabilitation',
        ],
      },
    ],

    // =====================================================
    // COGNITIVE PSYCHOLOGY & NEUROSCIENCE
    // =====================================================
    "Memory": [
      {
        'id': 'mem_models',
        'title': "Models of Memory",
        'tier': 'free',
        'topics': [
          'Atkinson-Shiffrin multi-store model',
          'Working memory model (Baddeley)',
          'Levels of processing (Craik & Lockhart)',
          'Dual-process theories',
        ],
      },
      {
        'id': 'mem_types',
        'title': "Types of Memory",
        'tier': 'free',
        'topics': [
          'Episodic vs. semantic memory',
          'Procedural memory',
          'Implicit vs. explicit memory',
          'Prospective memory',
        ],
      },
      {
        'id': 'mem_forgetting',
        'title': "Forgetting & Memory Errors",
        'tier': 'free',
        'topics': [
          'Theories of forgetting (decay, interference)',
          'False memories and misinformation effect',
          'Eyewitness testimony reliability',
          'Repressed and recovered memories',
        ],
      },
      {
        'id': 'mem_improvement',
        'title': "Memory Enhancement",
        'tier': 'vip',
        'topics': [
          'Mnemonic strategies',
          'Spaced repetition',
          'Context-dependent and state-dependent memory',
          'Sleep and memory consolidation',
        ],
      },
    ],

    "Attention & Perception": [
      {
        'id': 'attn_models',
        'title': "Models of Attention",
        'tier': 'free',
        'topics': [
          'Broadbent\'s filter model',
          'Treisman\'s attenuation theory',
          'Late selection models',
          'Spotlight and zoom-lens metaphors',
        ],
      },
      {
        'id': 'attn_types',
        'title': "Types of Attention",
        'tier': 'free',
        'topics': [
          'Selective attention',
          'Divided attention',
          'Sustained attention',
          'Executive attention',
        ],
      },
      {
        'id': 'attn_failures',
        'title': "Attention Failures",
        'tier': 'vip',
        'topics': [
          'Inattentional blindness',
          'Change blindness',
          'Attentional blink',
          'Mind wandering and ADHD',
        ],
      },
    ],

    "Language & Thought": [
      {
        'id': 'lang_acquisition',
        'title': "Language Acquisition",
        'tier': 'free',
        'topics': [
          'Nativist theory (Chomsky)',
          'Social interactionist perspective',
          'Language development milestones',
          'Bilingualism and cognitive effects',
        ],
      },
      {
        'id': 'lang_processing',
        'title': "Language Processing",
        'tier': 'free',
        'topics': [
          'Speech perception and production',
          'Semantic and syntactic processing',
          'Reading and dyslexia',
          'Language and the brain (Broca\'s and Wernicke\'s areas)',
        ],
      },
      {
        'id': 'lang_thought',
        'title': "Thinking & Reasoning",
        'tier': 'vip',
        'topics': [
          'Linguistic relativity (Sapir-Whorf)',
          'Deductive and inductive reasoning',
          'Heuristics and biases',
          'Concept formation and categorization',
        ],
      },
    ],

    "Cognitive Neuroscience": [
      {
        'id': 'cn_methods',
        'title': "Methods in Cognitive Neuroscience",
        'tier': 'free',
        'topics': [
          'Neuroimaging (fMRI, PET, EEG)',
          'Lesion studies',
          'Transcranial magnetic stimulation',
          'Single-cell recording',
        ],
      },
      {
        'id': 'cn_executive',
        'title': "Executive Functions",
        'tier': 'free',
        'topics': [
          'Prefrontal cortex and planning',
          'Inhibitory control',
          'Cognitive flexibility',
          'Working memory in the brain',
        ],
      },
      {
        'id': 'cn_emotion',
        'title': "Neural Basis of Emotion",
        'tier': 'vip',
        'topics': [
          'Amygdala and fear processing',
          'Reward circuitry and dopamine',
          'Emotion regulation networks',
          'Neuroscience of empathy',
        ],
      },
    ],

    "Decision Making": [
      {
        'id': 'dm_biases',
        'title': "Cognitive Biases",
        'tier': 'free',
        'topics': [
          'Confirmation bias',
          'Anchoring and availability heuristics',
          'Framing effects',
          'Overconfidence bias',
        ],
      },
      {
        'id': 'dm_theories',
        'title': "Decision-Making Theories",
        'tier': 'free',
        'topics': [
          'Expected utility theory',
          'Prospect theory (Kahneman & Tversky)',
          'Bounded rationality',
          'Dual-process theory (System 1 & System 2)',
        ],
      },
      {
        'id': 'dm_applied',
        'title': "Applied Decision Making",
        'tier': 'vip',
        'topics': [
          'Nudge theory and choice architecture',
          'Medical and legal decision making',
          'Group decision making',
          'Risk perception',
        ],
      },
    ],

    "Problem Solving & Creativity": [
      {
        'id': 'ps_strategies',
        'title': "Problem-Solving Strategies",
        'tier': 'free',
        'topics': [
          'Algorithms vs. heuristics',
          'Means-end analysis',
          'Analogical reasoning',
          'Barriers: functional fixedness and mental set',
        ],
      },
      {
        'id': 'ps_creativity',
        'title': "Creativity",
        'tier': 'vip',
        'topics': [
          'Divergent vs. convergent thinking',
          'Flow state and creativity',
          'Creativity and intelligence',
          'Fostering creative thinking',
        ],
      },
    ],

    // =====================================================
    // DEVELOPMENTAL PSYCHOLOGY
    // =====================================================
    "Child Development": [
      {
        'id': 'child_piaget',
        'title': "Piaget's Cognitive Development",
        'tier': 'free',
        'topics': [
          'Sensorimotor stage',
          'Preoperational stage',
          'Concrete operational stage',
          'Formal operational stage',
        ],
      },
      {
        'id': 'child_vygotsky',
        'title': "Vygotsky & Social Development",
        'tier': 'free',
        'topics': [
          'Zone of proximal development',
          'Scaffolding',
          'Private speech',
          'Cultural tools and cognitive development',
        ],
      },
      {
        'id': 'child_attachment',
        'title': "Attachment Theory",
        'tier': 'free',
        'topics': [
          'Bowlby\'s attachment theory',
          'Ainsworth\'s Strange Situation',
          'Attachment styles (secure, avoidant, anxious)',
          'Long-term effects of attachment',
        ],
      },
      {
        'id': 'child_socioemotional',
        'title': "Social-Emotional Development",
        'tier': 'free',
        'topics': [
          'Erikson\'s psychosocial stages (childhood)',
          'Temperament',
          'Self-concept development',
          'Emotion regulation in children',
        ],
      },
      {
        'id': 'child_prenatal',
        'title': "Prenatal Development & Infancy",
        'tier': 'vip',
        'topics': [
          'Stages of prenatal development',
          'Teratogens and their effects',
          'Newborn reflexes and capabilities',
          'Motor and perceptual development',
        ],
      },
    ],

    "Adolescent Psychology": [
      {
        'id': 'adol_identity',
        'title': "Identity Formation",
        'tier': 'free',
        'topics': [
          'Erikson\'s identity vs. role confusion',
          'Marcia\'s identity statuses',
          'Gender identity development',
          'Cultural influences on identity',
        ],
      },
      {
        'id': 'adol_brain',
        'title': "Adolescent Brain Development",
        'tier': 'free',
        'topics': [
          'Prefrontal cortex maturation',
          'Risk-taking behavior',
          'Reward sensitivity',
          'Synaptic pruning and myelination',
        ],
      },
      {
        'id': 'adol_social',
        'title': "Peer Relations & Social Media",
        'tier': 'vip',
        'topics': [
          'Peer pressure and conformity',
          'Bullying and cyberbullying',
          'Social media effects on mental health',
          'Romantic relationships in adolescence',
        ],
      },
      {
        'id': 'adol_challenges',
        'title': "Adolescent Mental Health",
        'tier': 'vip',
        'topics': [
          'Eating disorders',
          'Substance experimentation',
          'Anxiety and depression in teens',
          'Self-harm and suicide risk',
        ],
      },
    ],

    "Adult Development & Aging": [
      {
        'id': 'adult_early',
        'title': "Early & Middle Adulthood",
        'tier': 'free',
        'topics': [
          'Erikson\'s intimacy vs. isolation',
          'Generativity vs. stagnation',
          'Career development theories',
          'Midlife transitions',
        ],
      },
      {
        'id': 'adult_aging',
        'title': "Aging & Late Adulthood",
        'tier': 'free',
        'topics': [
          'Cognitive changes with aging',
          'Socioemotional selectivity theory',
          'Erikson\'s integrity vs. despair',
          'Successful aging models',
        ],
      },
      {
        'id': 'adult_neuro',
        'title': "Neurodegenerative Disorders",
        'tier': 'vip',
        'topics': [
          'Alzheimer\'s disease',
          'Parkinson\'s disease psychology',
          'Mild cognitive impairment',
          'Caregiver stress and support',
        ],
      },
      {
        'id': 'adult_death',
        'title': "Death, Dying & Bereavement",
        'tier': 'vip',
        'topics': [
          'Kübler-Ross stages of grief',
          'Continuing bonds theory',
          'Palliative care psychology',
          'Cultural perspectives on death',
        ],
      },
    ],

    "Moral Development": [
      {
        'id': 'moral_kohlberg',
        'title': "Kohlberg's Theory",
        'tier': 'free',
        'topics': [
          'Pre-conventional morality',
          'Conventional morality',
          'Post-conventional morality',
          'Criticisms of Kohlberg\'s theory',
        ],
      },
      {
        'id': 'moral_other',
        'title': "Other Approaches to Moral Development",
        'tier': 'free',
        'topics': [
          'Gilligan\'s ethics of care',
          'Moral intuition (Haidt)',
          'Piaget\'s moral reasoning stages',
          'Prosocial behavior development',
        ],
      },
      {
        'id': 'moral_applied',
        'title': "Moral Psychology in Practice",
        'tier': 'vip',
        'topics': [
          'Moral disengagement',
          'Empathy and moral action',
          'Moral education approaches',
          'Cross-cultural moral values',
        ],
      },
    ],

    "Language Development": [
      {
        'id': 'langdev_stages',
        'title': "Stages of Language Development",
        'tier': 'free',
        'topics': [
          'Babbling and first words',
          'Telegraphic speech',
          'Grammar acquisition',
          'Vocabulary explosion',
        ],
      },
      {
        'id': 'langdev_theories',
        'title': "Theories of Language Development",
        'tier': 'free',
        'topics': [
          'Chomsky\'s language acquisition device',
          'Skinner\'s behaviorist view',
          'Interactionist perspective',
          'Critical period hypothesis',
        ],
      },
      {
        'id': 'langdev_disorders',
        'title': "Language Disorders",
        'tier': 'vip',
        'topics': [
          'Specific language impairment',
          'Aphasia types',
          'Stuttering',
          'Autism and language development',
        ],
      },
    ],

    "Attachment Theory": [
      {
        'id': 'attach_bowlby',
        'title': "Bowlby's Attachment Theory",
        'tier': 'free',
        'topics': [
          'Internal working models',
          'Monotropy and hierarchy of attachments',
          'Maternal deprivation hypothesis',
          'Evolutionary basis of attachment',
        ],
      },
      {
        'id': 'attach_styles',
        'title': "Attachment Styles Across the Lifespan",
        'tier': 'free',
        'topics': [
          'Adult attachment interview',
          'Attachment in romantic relationships',
          'Earned security',
          'Intergenerational transmission',
        ],
      },
      {
        'id': 'attach_clinical',
        'title': "Attachment & Clinical Practice",
        'tier': 'vip',
        'topics': [
          'Reactive attachment disorder',
          'Attachment-based therapy',
          'Attachment in therapeutic relationships',
          'Cultural variations in attachment',
        ],
      },
    ],

    // =====================================================
    // SOCIAL & CULTURAL PSYCHOLOGY
    // =====================================================
    "Social Cognition": [
      {
        'id': 'sc_attribution',
        'title': "Attribution Theory",
        'tier': 'free',
        'topics': [
          'Fundamental attribution error',
          'Self-serving bias',
          'Actor-observer asymmetry',
          'Cultural differences in attribution',
        ],
      },
      {
        'id': 'sc_schemas',
        'title': "Schemas & Social Perception",
        'tier': 'free',
        'topics': [
          'Social schemas and stereotypes',
          'Impression formation',
          'Halo effect',
          'Self-fulfilling prophecy',
        ],
      },
      {
        'id': 'sc_attitudes',
        'title': "Attitudes & Attitude Change",
        'tier': 'free',
        'topics': [
          'Components of attitudes',
          'Cognitive dissonance (Festinger)',
          'Elaboration likelihood model',
          'Persuasion techniques',
        ],
      },
      {
        'id': 'sc_self',
        'title': "The Self in Social Context",
        'tier': 'vip',
        'topics': [
          'Self-concept and self-esteem',
          'Social comparison theory',
          'Self-presentation and impression management',
          'Social identity theory',
        ],
      },
    ],

    "Group Processes": [
      {
        'id': 'gp_conformity',
        'title': "Conformity & Obedience",
        'tier': 'free',
        'topics': [
          'Asch conformity experiments',
          'Milgram obedience studies',
          'Factors affecting conformity',
          'Minority influence',
        ],
      },
      {
        'id': 'gp_dynamics',
        'title': "Group Dynamics",
        'tier': 'free',
        'topics': [
          'Social facilitation and social loafing',
          'Groupthink',
          'Group polarization',
          'Deindividuation',
        ],
      },
      {
        'id': 'gp_aggression',
        'title': "Aggression & Prosocial Behavior",
        'tier': 'vip',
        'topics': [
          'Theories of aggression',
          'Bystander effect',
          'Altruism and helping behavior',
          'Media violence and aggression',
        ],
      },
    ],

    "Cultural Psychology": [
      {
        'id': 'cult_dimensions',
        'title': "Cultural Dimensions",
        'tier': 'free',
        'topics': [
          'Individualism vs. collectivism',
          'Power distance',
          'Uncertainty avoidance',
          'Cultural tightness vs. looseness',
        ],
      },
      {
        'id': 'cult_cognition',
        'title': "Culture & Cognition",
        'tier': 'free',
        'topics': [
          'Cultural influences on perception',
          'Culture and emotion expression',
          'Cross-cultural intelligence testing',
          'Ethnocentrism and cultural relativism',
        ],
      },
      {
        'id': 'cult_mental',
        'title': "Culture & Mental Health",
        'tier': 'vip',
        'topics': [
          'Culture-bound syndromes',
          'Cultural competence in therapy',
          'Acculturation stress',
          'Indigenous healing practices',
        ],
      },
    ],

    "Prejudice & Discrimination": [
      {
        'id': 'prej_theories',
        'title': "Theories of Prejudice",
        'tier': 'free',
        'topics': [
          'Social identity theory (Tajfel)',
          'Realistic conflict theory',
          'Implicit bias and IAT',
          'Authoritarian personality',
        ],
      },
      {
        'id': 'prej_stereotypes',
        'title': "Stereotypes & Discrimination",
        'tier': 'free',
        'topics': [
          'Stereotype threat',
          'Microaggressions',
          'Institutional discrimination',
          'Intersectionality',
        ],
      },
      {
        'id': 'prej_reduction',
        'title': "Prejudice Reduction",
        'tier': 'vip',
        'topics': [
          'Contact hypothesis (Allport)',
          'Intergroup dialogue',
          'Diversity training effectiveness',
          'Education-based interventions',
        ],
      },
    ],

    "Attitudes & Persuasion": [
      {
        'id': 'att_formation',
        'title': "Attitude Formation & Change",
        'tier': 'free',
        'topics': [
          'Classical and operant conditioning of attitudes',
          'Cognitive dissonance theory',
          'Self-perception theory',
          'Balance theory',
        ],
      },
      {
        'id': 'att_persuasion',
        'title': "Persuasion & Influence",
        'tier': 'free',
        'topics': [
          'Cialdini\'s principles of influence',
          'Elaboration likelihood model',
          'Source credibility',
          'Propaganda and advertising techniques',
        ],
      },
      {
        'id': 'att_resistance',
        'title': "Resistance to Persuasion",
        'tier': 'vip',
        'topics': [
          'Inoculation theory',
          'Reactance theory',
          'Forewarning effects',
          'Critical media literacy',
        ],
      },
    ],

    "Interpersonal Relationships": [
      {
        'id': 'rel_attraction',
        'title': "Attraction & Love",
        'tier': 'free',
        'topics': [
          'Physical attractiveness and similarity',
          'Sternberg\'s triangular theory of love',
          'Attachment styles in relationships',
          'Evolutionary perspectives on mate selection',
        ],
      },
      {
        'id': 'rel_maintenance',
        'title': "Relationship Maintenance & Conflict",
        'tier': 'free',
        'topics': [
          'Communication patterns',
          'Gottman\'s four horsemen',
          'Equity and social exchange theory',
          'Conflict resolution strategies',
        ],
      },
      {
        'id': 'rel_dissolution',
        'title': "Relationship Dissolution",
        'tier': 'vip',
        'topics': [
          'Duck\'s model of relationship breakdown',
          'Coping with breakups',
          'Divorce psychology',
          'Post-relationship growth',
        ],
      },
    ],

    // =====================================================
    // APPLIED PSYCHOLOGY
    // =====================================================
    "IO Psychology": [
      {
        'id': 'io_selection',
        'title': "Personnel Selection & Assessment",
        'tier': 'free',
        'topics': [
          'Job analysis methods',
          'Structured interviews',
          'Assessment centers',
          'Validity and reliability in selection',
        ],
      },
      {
        'id': 'io_motivation',
        'title': "Work Motivation",
        'tier': 'free',
        'topics': [
          'Herzberg\'s two-factor theory',
          'Self-determination theory at work',
          'Goal-setting theory',
          'Equity theory',
        ],
      },
      {
        'id': 'io_leadership',
        'title': "Leadership Theories",
        'tier': 'free',
        'topics': [
          'Transformational vs. transactional leadership',
          'Situational leadership',
          'Authentic leadership',
          'Leader-member exchange theory',
        ],
      },
      {
        'id': 'io_wellbeing',
        'title': "Workplace Well-being",
        'tier': 'vip',
        'topics': [
          'Burnout and job stress',
          'Work-life balance',
          'Organizational justice',
          'Employee engagement',
        ],
      },
      {
        'id': 'io_teams',
        'title': "Teams & Organizational Behavior",
        'tier': 'vip',
        'topics': [
          'Team dynamics and effectiveness',
          'Organizational culture and climate',
          'Change management',
          'Diversity in organizations',
        ],
      },
    ],

    "Educational Psychology": [
      {
        'id': 'ed_learning',
        'title': "Learning Theories",
        'tier': 'free',
        'topics': [
          'Behaviorist learning theory',
          'Constructivism',
          'Social learning theory (Bandura)',
          'Situated cognition',
        ],
      },
      {
        'id': 'ed_motivation',
        'title': "Motivation in Education",
        'tier': 'free',
        'topics': [
          'Intrinsic vs. extrinsic motivation',
          'Self-efficacy and academic performance',
          'Attribution theory in education',
          'Growth mindset (Dweck)',
        ],
      },
      {
        'id': 'ed_assessment',
        'title': "Assessment & Evaluation",
        'tier': 'free',
        'topics': [
          'Formative vs. summative assessment',
          'Standardized testing',
          'Portfolio assessment',
          'Test bias and fairness',
        ],
      },
      {
        'id': 'ed_special',
        'title': "Special Education & Inclusive Practices",
        'tier': 'vip',
        'topics': [
          'Learning disabilities (dyslexia, ADHD)',
          'Gifted education',
          'Inclusive classroom strategies',
          'Individualized Education Programs',
        ],
      },
    ],

    "Health Psychology": [
      {
        'id': 'hp_stress',
        'title': "Stress & Coping",
        'tier': 'free',
        'topics': [
          'General adaptation syndrome (Selye)',
          'Lazarus\'s transactional model',
          'Coping strategies (problem-focused vs. emotion-focused)',
          'Social support and health',
        ],
      },
      {
        'id': 'hp_behavior',
        'title': "Health Behavior Change",
        'tier': 'free',
        'topics': [
          'Health belief model',
          'Theory of planned behavior',
          'Transtheoretical model (stages of change)',
          'Motivational interviewing',
        ],
      },
      {
        'id': 'hp_chronic',
        'title': "Chronic Illness & Pain",
        'tier': 'vip',
        'topics': [
          'Psychological impact of chronic disease',
          'Gate control theory of pain',
          'Biopsychosocial model of health',
          'Patient adherence',
        ],
      },
      {
        'id': 'hp_positive',
        'title': "Positive Health & Prevention",
        'tier': 'vip',
        'topics': [
          'Positive psychology interventions for health',
          'Exercise and mental health',
          'Nutrition psychology',
          'Sleep and psychological well-being',
        ],
      },
    ],

    "Sports Psychology": [
      {
        'id': 'sport_performance',
        'title': "Performance Psychology",
        'tier': 'free',
        'topics': [
          'Arousal and performance (Yerkes-Dodson law)',
          'Goal setting in sports',
          'Mental imagery and visualization',
          'Self-talk and motivation',
        ],
      },
      {
        'id': 'sport_mental',
        'title': "Mental Health in Athletes",
        'tier': 'free',
        'topics': [
          'Anxiety and performance',
          'Burnout in athletes',
          'Injury recovery psychology',
          'Retirement from sports',
        ],
      },
      {
        'id': 'sport_team',
        'title': "Team Dynamics in Sports",
        'tier': 'vip',
        'topics': [
          'Team cohesion and communication',
          'Leadership in sports teams',
          'Social facilitation in competition',
          'Flow state in athletics',
        ],
      },
    ],

    "Environmental Psychology": [
      {
        'id': 'env_space',
        'title': "Space & Behavior",
        'tier': 'free',
        'topics': [
          'Personal space and territoriality',
          'Crowding and density effects',
          'Workspace design and productivity',
          'Restorative environments',
        ],
      },
      {
        'id': 'env_sustainability',
        'title': "Environmental Behavior",
        'tier': 'vip',
        'topics': [
          'Pro-environmental behavior',
          'Climate change psychology',
          'Eco-anxiety',
          'Sustainable behavior interventions',
        ],
      },
    ],

    "Consumer Psychology": [
      {
        'id': 'consumer_behavior',
        'title': "Consumer Behavior",
        'tier': 'free',
        'topics': [
          'Consumer decision-making processes',
          'Brand perception and loyalty',
          'Advertising psychology',
          'Social proof and consumer choice',
        ],
      },
      {
        'id': 'consumer_neuro',
        'title': "Neuromarketing",
        'tier': 'vip',
        'topics': [
          'Brain responses to marketing',
          'Emotional branding',
          'Sensory marketing',
          'Ethical considerations in neuromarketing',
        ],
      },
    ],

    // =====================================================
    // PERSONALITY & INDIVIDUAL DIFFERENCES
    // =====================================================
    "Personality Theories": [
      {
        'id': 'pers_psychodynamic',
        'title': "Psychodynamic Theories",
        'tier': 'free',
        'topics': [
          'Freud\'s structural model (id, ego, superego)',
          'Defense mechanisms',
          'Psychosexual stages',
          'Neo-Freudians (Jung, Adler, Erikson)',
        ],
      },
      {
        'id': 'pers_trait',
        'title': "Trait Theories",
        'tier': 'free',
        'topics': [
          'Big Five personality model (OCEAN)',
          'Eysenck\'s PEN model',
          'Cattell\'s 16 personality factors',
          'Trait stability across the lifespan',
        ],
      },
      {
        'id': 'pers_humanistic',
        'title': "Humanistic & Social-Cognitive",
        'tier': 'free',
        'topics': [
          'Maslow\'s hierarchy of needs',
          'Rogers\' self-concept theory',
          'Bandura\'s self-efficacy',
          'Reciprocal determinism',
        ],
      },
      {
        'id': 'pers_assessment',
        'title': "Personality Assessment",
        'tier': 'vip',
        'topics': [
          'Self-report inventories',
          'Projective tests',
          'Behavioral assessment of personality',
          'Cross-cultural personality assessment',
        ],
      },
    ],

    "Intelligence & Cognitive Abilities": [
      {
        'id': 'intel_theories',
        'title': "Theories of Intelligence",
        'tier': 'free',
        'topics': [
          'Spearman\'s g factor',
          'Gardner\'s multiple intelligences',
          'Sternberg\'s triarchic theory',
          'Emotional intelligence (Goleman)',
        ],
      },
      {
        'id': 'intel_testing',
        'title': "Intelligence Testing",
        'tier': 'free',
        'topics': [
          'IQ test history and development',
          'Wechsler scales (WAIS, WISC)',
          'Stanford-Binet intelligence test',
          'Cultural bias in testing',
        ],
      },
      {
        'id': 'intel_nature',
        'title': "Nature vs. Nurture in Intelligence",
        'tier': 'vip',
        'topics': [
          'Heritability of intelligence',
          'Flynn effect',
          'Environmental enrichment effects',
          'Intellectual disability and giftedness',
        ],
      },
    ],

    "Motivation & Emotion": [
      {
        'id': 'mot_theories',
        'title': "Theories of Motivation",
        'tier': 'free',
        'topics': [
          'Drive reduction theory',
          'Maslow\'s hierarchy of needs',
          'Self-determination theory',
          'Incentive and arousal theories',
        ],
      },
      {
        'id': 'mot_emotion',
        'title': "Theories of Emotion",
        'tier': 'free',
        'topics': [
          'James-Lange theory',
          'Cannon-Bard theory',
          'Schachter-Singer two-factor theory',
          'Cognitive appraisal theory (Lazarus)',
        ],
      },
      {
        'id': 'mot_regulation',
        'title': "Emotion Regulation",
        'tier': 'free',
        'topics': [
          'Gross\'s process model',
          'Cognitive reappraisal',
          'Expressive suppression',
          'Emotional intelligence in practice',
        ],
      },
      {
        'id': 'mot_specific',
        'title': "Specific Motivations",
        'tier': 'vip',
        'topics': [
          'Hunger and eating behavior',
          'Sexual motivation',
          'Achievement motivation',
          'Intrinsic vs. extrinsic motivation',
        ],
      },
    ],

    "Self & Identity": [
      {
        'id': 'self_concept',
        'title': "Self-Concept & Self-Esteem",
        'tier': 'free',
        'topics': [
          'Components of self-concept',
          'Self-esteem development',
          'Self-discrepancy theory',
          'Self-compassion',
        ],
      },
      {
        'id': 'self_identity',
        'title': "Identity Development",
        'tier': 'free',
        'topics': [
          'Erikson\'s identity theory',
          'Social identity and group membership',
          'Gender identity development',
          'Narrative identity',
        ],
      },
      {
        'id': 'self_regulation',
        'title': "Self-Regulation & Control",
        'tier': 'vip',
        'topics': [
          'Self-regulation models',
          'Ego depletion theory',
          'Delay of gratification',
          'Mindfulness and self-awareness',
        ],
      },
    ],

    "Individual Differences": [
      {
        'id': 'indiv_temperament',
        'title': "Temperament",
        'tier': 'free',
        'topics': [
          'Thomas and Chess temperament types',
          'Biological basis of temperament',
          'Temperament and personality',
          'Goodness of fit model',
        ],
      },
      {
        'id': 'indiv_creativity',
        'title': "Creativity & Giftedness",
        'tier': 'vip',
        'topics': [
          'Creativity as an individual difference',
          'Twice-exceptional learners',
          'Savant syndrome',
          'Individual differences in cognitive style',
        ],
      },
    ],

    // =====================================================
    // RESEARCH & ASSESSMENT
    // =====================================================
    "Research Methods": [
      {
        'id': 'resm_experimental',
        'title': "Experimental Research",
        'tier': 'free',
        'topics': [
          'True experiments and quasi-experiments',
          'Between-subjects vs. within-subjects designs',
          'Control groups and placebos',
          'Random assignment',
        ],
      },
      {
        'id': 'resm_nonexperimental',
        'title': "Non-Experimental Methods",
        'tier': 'free',
        'topics': [
          'Correlational studies',
          'Survey research',
          'Case studies',
          'Content analysis',
        ],
      },
      {
        'id': 'resm_qualitative',
        'title': "Qualitative Research",
        'tier': 'vip',
        'topics': [
          'Grounded theory',
          'Phenomenological research',
          'Ethnography',
          'Thematic analysis',
        ],
      },
    ],

    "Statistics for Psychology": [
      {
        'id': 'stats_descriptive',
        'title': "Descriptive Statistics",
        'tier': 'free',
        'topics': [
          'Measures of central tendency',
          'Measures of variability',
          'Normal distribution',
          'Data visualization',
        ],
      },
      {
        'id': 'stats_inferential',
        'title': "Inferential Statistics",
        'tier': 'free',
        'topics': [
          'Hypothesis testing (null and alternative)',
          't-tests and ANOVA',
          'Chi-square tests',
          'Effect size and power analysis',
        ],
      },
      {
        'id': 'stats_advanced',
        'title': "Advanced Statistical Methods",
        'tier': 'vip',
        'topics': [
          'Regression analysis',
          'Factor analysis',
          'Meta-analysis',
          'Structural equation modeling',
        ],
      },
    ],

    "Psychometrics & Testing": [
      {
        'id': 'psym_reliability',
        'title': "Reliability & Validity",
        'tier': 'free',
        'topics': [
          'Test-retest and internal consistency',
          'Content, criterion, and construct validity',
          'Face validity',
          'Standard error of measurement',
        ],
      },
      {
        'id': 'psym_construction',
        'title': "Test Construction",
        'tier': 'free',
        'topics': [
          'Item writing and analysis',
          'Norming and standardization',
          'Classical test theory',
          'Item response theory basics',
        ],
      },
      {
        'id': 'psym_types',
        'title': "Types of Psychological Tests",
        'tier': 'vip',
        'topics': [
          'Achievement and aptitude tests',
          'Personality inventories',
          'Neuropsychological batteries',
          'Projective measures',
        ],
      },
    ],

    "Ethics in Psychology": [
      {
        'id': 'eth_principles',
        'title': "Ethical Principles",
        'tier': 'free',
        'topics': [
          'APA ethics code overview',
          'Beneficence and nonmaleficence',
          'Informed consent process',
          'Confidentiality and its limits',
        ],
      },
      {
        'id': 'eth_research',
        'title': "Ethics in Research",
        'tier': 'free',
        'topics': [
          'IRB review process',
          'Deception and debriefing',
          'Vulnerable populations',
          'Data integrity and fabrication',
        ],
      },
      {
        'id': 'eth_practice',
        'title': "Ethics in Clinical Practice",
        'tier': 'vip',
        'topics': [
          'Dual relationships and boundaries',
          'Competence and scope of practice',
          'Mandatory reporting',
          'Ethical dilemmas in therapy',
        ],
      },
    ],

    "Qualitative Research": [
      {
        'id': 'qual_methods',
        'title': "Qualitative Methods",
        'tier': 'free',
        'topics': [
          'Interviews and focus groups',
          'Participant observation',
          'Document analysis',
          'Reflexivity in research',
        ],
      },
      {
        'id': 'qual_analysis',
        'title': "Qualitative Data Analysis",
        'tier': 'vip',
        'topics': [
          'Coding and categorization',
          'Thematic analysis procedures',
          'Narrative analysis',
          'Trustworthiness and rigor',
        ],
      },
    ],

    // =====================================================
    // THERAPEUTIC APPROACHES
    // =====================================================
    "Cognitive Behavioral Therapy": [
      {
        'id': 'cbt_principles',
        'title': "CBT Principles & Techniques",
        'tier': 'free',
        'topics': [
          'Cognitive model of emotional disorders',
          'Identifying automatic thoughts',
          'Cognitive restructuring',
          'Behavioral experiments',
        ],
      },
      {
        'id': 'cbt_techniques',
        'title': "CBT Intervention Techniques",
        'tier': 'free',
        'topics': [
          'Thought records',
          'Activity scheduling',
          'Exposure and response prevention',
          'Behavioral activation',
        ],
      },
      {
        'id': 'cbt_applications',
        'title': "CBT for Specific Disorders",
        'tier': 'vip',
        'topics': [
          'CBT for depression',
          'CBT for anxiety disorders',
          'CBT for PTSD',
          'CBT for eating disorders',
        ],
      },
    ],

    "Psychodynamic Therapy": [
      {
        'id': 'pdt_concepts',
        'title': "Core Concepts",
        'tier': 'free',
        'topics': [
          'Unconscious processes',
          'Transference and countertransference',
          'Resistance and defense mechanisms',
          'Free association',
        ],
      },
      {
        'id': 'pdt_modern',
        'title': "Modern Psychodynamic Approaches",
        'tier': 'vip',
        'topics': [
          'Brief psychodynamic therapy',
          'Object relations therapy',
          'Self psychology (Kohut)',
          'Relational psychoanalysis',
        ],
      },
    ],

    "Humanistic & Existential Therapy": [
      {
        'id': 'hum_person_centered',
        'title': "Person-Centered Therapy",
        'tier': 'free',
        'topics': [
          'Core conditions (empathy, congruence, UPR)',
          'Client self-actualization',
          'Non-directive approach',
          'Therapeutic relationship as healing',
        ],
      },
      {
        'id': 'hum_existential',
        'title': "Existential Therapy",
        'tier': 'vip',
        'topics': [
          'Freedom and responsibility',
          'Meaning and purposelessness',
          'Death anxiety',
          'Existential isolation and authenticity',
        ],
      },
    ],

    "Group & Family Therapy": [
      {
        'id': 'gft_group',
        'title': "Group Therapy",
        'tier': 'free',
        'topics': [
          'Stages of group development',
          'Therapeutic factors in groups (Yalom)',
          'Types of therapy groups',
          'Role of the group facilitator',
        ],
      },
      {
        'id': 'gft_family',
        'title': "Family & Couples Therapy",
        'tier': 'free',
        'topics': [
          'Structural family therapy (Minuchin)',
          'Strategic family therapy',
          'Emotion-focused couples therapy',
          'Family systems theory',
        ],
      },
      {
        'id': 'gft_specialized',
        'title': "Specialized Group Approaches",
        'tier': 'vip',
        'topics': [
          'Psychoeducational groups',
          'Support groups',
          'Process groups',
          'Online and telehealth group therapy',
        ],
      },
    ],

    "Behavioral Therapy": [
      {
        'id': 'bt_classical',
        'title': "Classical Conditioning Techniques",
        'tier': 'free',
        'topics': [
          'Systematic desensitization',
          'Flooding and implosion',
          'Aversion therapy',
          'Stimulus generalization in therapy',
        ],
      },
      {
        'id': 'bt_operant',
        'title': "Operant Conditioning Techniques",
        'tier': 'free',
        'topics': [
          'Token economies',
          'Contingency management',
          'Shaping and chaining',
          'Behavioral contracts',
        ],
      },
      {
        'id': 'bt_applied',
        'title': "Applied Behavior Analysis",
        'tier': 'vip',
        'topics': [
          'ABA for autism spectrum disorders',
          'Functional behavior assessment',
          'Discrete trial training',
          'Ethical considerations in ABA',
        ],
      },
    ],

    "Integrative Approaches": [
      {
        'id': 'int_eclectic',
        'title': "Eclectic & Integrative Models",
        'tier': 'free',
        'topics': [
          'Technical eclecticism',
          'Theoretical integration',
          'Common factors approach',
          'Assimilative integration',
        ],
      },
      {
        'id': 'int_evidence',
        'title': "Evidence-Based Practice",
        'tier': 'vip',
        'topics': [
          'Empirically supported treatments',
          'Practice-based evidence',
          'Client preferences and values',
          'Therapist expertise',
        ],
      },
    ],

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
