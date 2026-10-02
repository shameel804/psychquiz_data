// python3 generate_pipeline.py prompts "Introduction to Psychology" --topic intro_what_is
// python3 generate_pipeline.py process "History of Psychology"
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

    
  };

}
