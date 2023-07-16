# Final priorities
- methodology
- experiments
- discussion
- introduction
- abstract
- poděkování
- code readme and cleanup



- DONE large language models
- DONE napsat related work - liang

- popsat tokmix


- vyhodit finetuning v metodologii

- přidat tabulky s clusteringy do experiments

- vyhodit: 2Here we have departed slightly from the recipe in the papers and used 1M lines per language
    - popsat doopravdy jak jsem to udělal (opravené)

- projít citace
- přepsat konec introduction

# Finished chapters

- Results = (finished), waiting for Tomasz comments
    - possibly add the comparison between CPT and AR
- Background = finished
    - leda přidat pixel networks, character level, a přidávání tokenů do vocabu

# Ideas

## Otázky pro Tomáše

- co dělat s rozdílnou interpretací vocab overlap mezi 6 lang and 20 lang
- je v pohodě prezentovat jen alpha=0.0 a vyhodit word-balancing?

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

- vysvětlit in-language and crosslingual probing


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