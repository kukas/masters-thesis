# Priorities

## Otázky pro Tomáše

- co dělat s rozdílnou interpretací vocab overlap mezi 6 lang and 20 lang
- je v pohodě prezentovat jen alpha=0.0 a vyhodit word-balancing?

## Otázka pro Ondru Duška
- jak psát captions k obrázkům? Tomáš mi řekl že neví

## Experimenty

- big chung, big zheng

## INTRODUCTION

- introduction - přepsat

## RELATED WORK
- related work
    - přidat LLMs
    - přidat mBERT, XLM-R
    - alternative tokenization approaches
    - subword regularization

## METHOD
- !! do data hodně vysvětlit, že u toknizerů používáme různá alpha ale u pretrainingu ne.
- ! vysvětlit, že všechny experimenty jsou probing
- k AR metrice: je to samozřejmě závislý na vocab size, ale měl bych to poznamenat
- obecně naše metriky předpokládají nějaký předem daný vocabulary budget, který chceme spravedlivě rozdělit
- taky se zaměřit na OOV and overlap

## EXPERIMENTS
- masked token ratio 15%
- přidat víc podrobností o našich replikacích - jaké clustery jsme dostali (Chung, Liang), jaké vocab sizes jsme alokovali (Zheng)

- ? do první sekce přidat Macro CPT/AR/JSD vs F1 NER, F1 POS, Acc NLI
    - jakože přidat scatterplot, ve kterém je na ose x Macro CPT a na ose y F1 NER

## RESULTS
- !! napsat veškerý text do sections

- ! rozmyslet jestli nedává smysl udělat scatterplot matrix s baseline alpha1.0 místo průměru, když teda chceme "debiasovat"

- možná bych mohl rozdělit UNK-zh a UNK-ostatní jazyky protože čínština je specifická

- i have more experiments comparing Huggingface and Sentencepiece but is it worth including

- přidat (tgt_cpt+src_cpt)/2 do scatterplot matrix pro crosslingual transfer
- nápad: udělat ukázat kompatibilitu CPT mezi source a target pomocí heatmapy=

## DISCUSSION

- na konci ukázat jak to funguje na 100 jazycích (se 200k na jazyk můžu natrénovat 100 jazyků)

## APPENDIX

- popsat word balancing / document clustering
- do Appendixu přidat všechny experimenty, ukázat že jsou random

## General

- \ref -> \autoref


As we can see, the Huggingface Unigram tokenizer is a clear outlier in terms of all metrics even after taking account the higher alphabet size as explored in \ref{tab:coverage_influence}. We can see that this is a problem in the implementation as the corresponding Sentencepiece \textit{unigram\_alpha0.3} scores much higher. Interestingly, we found that the BPE implementation (\textit{huggingface\_bpe\_alpha0.25}) is better in Huggingface than in Sentencepiece (\textit{bpe\_alpha0.25}).