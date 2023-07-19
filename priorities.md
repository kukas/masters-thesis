# meeting 2

structure of the chapters
- introduction
- method -> 5.1 experiments, dont call it method
- results 5.2
    - subsection for each result separately
- findings / conclusion
    - what the results mean in the context of the research questions we posed


names of the chapters
- OK validation of metrics -> change it into something that has the gist of the research questions
    - how tokenizer properties affect language modeling / tokenizer properties affect the performance of language models
- OK how to train a good multilingual tokenizers / choices for optimal multilingual tokenizers / design choices for good multilingual tokenizers
- OK Comparison of balancing methods -> Comparison of vocabulary balancing methods

capitalization of chapter names? 
- search google?
- look at other theses

publish a paper?

# meeting
- think about research questions
    - what are the questions (introduction)
    - how to answer them (methodology / experimental setup)
    - what are the answers (results)

- methodology
    - add implementation details and other common parts from experiments
    - define constants
- experiments + results
    - this could be structured as three sections
        - validity of metrics
        - tokenizer properties
        - balancing methods
    - each section will have a similar structure:
        - research question / motivation
        - experimental setup
        - results

# Final priorities


- discussion
    - the discussion about overlap - discuss the confluence with the vocabulary allocation, the allocation seems to be more important. The tokenizer metric figure AR vs JSD is a good illustration of this - the first batch of experiments JSD is positively correlated, for the second batch of experiments JSD is negatively correlated with allocation. This is reflected in the results
- introduction
- related work - maybe include discussion about the gaps in the literature
- abstract
- go through the results and Tomasz comments

- experimental setup
    - (low priority) Tokenizer implementations and important parameters

Thursday:
- fix the layout
- poděkování
- pdfa
    - figures from paper break pdfa
- citations cleanup
- podepsat výtisky


- remove alphabet discussion from the paper results section

- projít citace

# Finished chapters

- Results = (finished), waiting for Tomasz comments
    - possibly add the comparison between CPT and AR
- Background = finished

# Ideas

## Otázky pro Tomáše

- co dělat s rozdílnou interpretací vocab overlap mezi 6 lang and 20 lang
- je v pohodě prezentovat jen alpha=0.0 a vyhodit word-balancing?
- použití figures z posteru
- jak prezentovat ten jeden "theoretical result" s ALP=-H*TL, kam ho umístit, jak ho předělat na lemma/proof

## Otázka pro Ondru Duška?
- jak psát captions k obrázkům?

## Experimenty

- DONE run new chung / zheng finetunings
- big chung, big zheng

## INTRODUCTION

- introduction - přepsat

## RELATED WORK
- related work
    - přidat LLMs
    - přidat mBERT, XLM-R
    - alternative tokenization approaches
    - subword regularization

-vysvětlit UNK tokens

## METHOD


## EXPERIMENTS

- ? do první sekce přidat Macro CPT/AR/JSD vs F1 NER, F1 POS, Acc NLI
    - jakože přidat scatterplot, ve kterém je na ose x Macro CPT a na ose y F1 NER

## RESULTS

- !! fix the paper results
    - consult with Tomasz

- opravit grafy language level cpt tak, aby se nemačkaly jazyky v ose x
    - něco jako každý druhý jazyk posunout trochu dolů

- opravit pořadí jazyků mezi downstream per language a tokenizer metrics per language

### reproductions
- ! kouknout na overlap mezi jazyky sdílejícími stejné písmo
- možná bych mohl rozdělit UNK-zh a UNK-ostatní jazyky protože čínština je specifická


### probings

- ! rozmyslet jestli nedává smysl udělat scatterplot matrix s baseline alpha1.0 místo průměru, když teda chceme "debiasovat"


- nápad: udělat ukázat kompatibilitu CPT mezi source a target pomocí heatmapy=



## DISCUSSION

- na konci ukázat jak to funguje na 100 jazycích (se 200k na jazyk můžu natrénovat 100 jazyků)

- from the second batch of experiments it seems that there is some strong correspondence between AR and CPT

## APPENDIX

- popsat word balancing / document clustering
- do Appendixu přidat všechny experimenty, ukázat že jsou random

## General

- \ref -> \autoref


As we can see, the Huggingface Unigram tokenizer is a clear outlier in terms of all metrics even after taking account the higher alphabet size as explored in \ref{tab:coverage_influence}. We can see that this is a problem in the implementation as the corresponding Sentencepiece \textit{unigram\_alpha0.3} scores much higher. Interestingly, we found that the BPE implementation (\textit{huggingface\_bpe\_alpha0.25}) is better in Huggingface than in Sentencepiece (\textit{bpe\_alpha0.25}).