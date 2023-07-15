# Priorities

## Otázky pro Tomáše

- co dělat s rozdílnou interpretací vocab overlap mezi 6 lang and 20 lang
- je v pohodě prezentovat jen alpha=0.0 a vyhodit word-balancing?

## Otázka pro Ondru Duška?
- jak psát captions k obrázkům?

## Experimenty

- run new chung / zheng finetunings
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
- vysvětlit TokMix!!!
- !! do data hodně vysvětlit, že u toknizerů používáme různá alpha ale u pretrainingu ne.
- ! vysvětlit, že všechny experimenty jsou probing
- k AR metrice: je to samozřejmě závislý na vocab size, ale měl bych to poznamenat
- k JSD metrice: není zřejmé jestli chceme vyšší overlap nebo nižší
- obecně naše metriky předpokládají nějaký předem daný vocabulary budget, který chceme spravedlivě rozdělit

- vysvětlit UNK tokens, alphabet size
- taky se zaměřit na OOV and overlap

- vysvětlit in-language and crosslingual probing

- výhoda AR oproti CPT - u čínštiny započítává jednotlivé znaky, což by u CPT nebylo vidět

## EXPERIMENTS
- masked token ratio 15%
- přidat víc podrobností o našich replikacích - jaké clustery jsme dostali (Chung, Liang), jaké vocab sizes jsme alokovali (Zheng)

- ? do první sekce přidat Macro CPT/AR/JSD vs F1 NER, F1 POS, Acc NLI
    - jakože přidat scatterplot, ve kterém je na ose x Macro CPT a na ose y F1 NER
- explain bootstrapping

## RESULTS

- porovnat CPT and AR, protipříklad že nejsou stejný: přidání logogramů do čínštiny zvyšuje AR ale ne CPT

- míra korelace závisí na tom, jak moc se liší experimenty. Když porovnáváme jen stejné experimenty, pak nám vyjde nízká

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