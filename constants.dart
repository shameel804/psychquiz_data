// python3 generate_pipeline.py prompts "Qualitative Research" --topic intro_what_is
// python3 generate_pipeline.py process "Qualitative Research"
// Read the file staging/INSTRUCTIONS.md and follow all instructions. For each task, read the prompt file, generate the quiz JSON following ALL rules, and write the output to the specified output file path.

class Constants {
    static const Map<String, List<Map<String, dynamic>>> allTypes = {
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

  };

}
