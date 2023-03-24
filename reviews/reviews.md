----------------------- REVIEW 1 ---------------------
SUBMISSION: 22
TITLE: Rewriting modulo traced comonoid structure
AUTHORS: Dan Ghica and George Kaye

----------- Overall evaluation -----------
SCORE: 3 (strong accept)
----- TEXT:
Traditional Cartesian (i.e., term-based) syntax turns out to be uncovenient for representing non-classical computational models, like those where data cannot be copied or discarded. For this reason, a growing number of works uses monoidal categories and string diagrams to represent various kinds of computing systems.

Consequently, to automatically reason on these systems, the traditional term rewriting has to be replaced by some kind of string diagrams rewriting. Several frameworks has been proposed but none of them can nicely deals with "traced monoidal categories", an important class of monoidal categories which allows to represents fundamental computational primitives, like recursion, iteration and feedbacks.

This paper extends one of the existing framework for string-diagram-rewriting to properly deals with traces.

More precisely, it contains four main results.
The first step is to provide a combinatorial representation of the terms of a freely generated traced monoidal category (T_\Sigma). This is done by identifying the subcategory of the category of Discrete Cospans of hypergraphs (previously introduced in [5]) which is isomorphic to T_\Sigma (Corollary 35). This category contains all cospans which are "partial monogamous" (Definition 22).
The second step consists in defining a proper rewriting modulo the trace structure (Traced DPO, Definition 58). The rewriting technique is a simple adaptation of standard Double Pushout Rewriting where "rewriting context" are properly restricted. The main results (Theorem 64) states that this form of rewriting is sound and complete.
The third and the fourth steps extend the previous two to the case of traced symmetric monoidal categories which additionally have a comonoid structure: these categories are particularly relevant for traditional computations as they usually represent traditional syntax plus fixpoints.


I enjoyed a lot reading this paper. The results seem to me of great importance and with potentially many applications that, in my opinion, the authors do not emphasize enough. I also loved the fact that some annoying restriction made in [6], namely "convexity" are not necessary for Traced DPO as nicely illustrated in Example 62.

Concerning the case studies, I would have given more emphasis to the Cartesian Structure and, investigate how traced DPO may help with fixpoint equations. Also a little remark about the Co(Cartesian) Structure, which is also interesting (see one of the last section in [31]) could be nice: I guess that moving from comonoidal trace to monoidal trace is rather obvious with your work.

Despite this minor, personal, feeling of unsatisfaction, I strongly recommend the acceptance of this paper.

Minor comments:

Definition 1. In this definition and the following you forgot to mention that the categories are strict monoidal. Maybe a footnote or something quick could be said.

After remark 3: "\sigma_{X,Y}"--> to be consistent with the previous id_x, it should be "\sigma_{x,y}"

Definition 23: I found a bit hard to read this definition. An example could help the reader a lot.

Definition 27: "the copairing of BLA + BLA" --> "the copairing of BLA and BLA"

In between Definition 70 and 71. It could be convenient to cite Fox.

Remark 73. I do not understand it. It is also very confusing. I would just drop it

QUESTION FOR THE REBUTTAL:
Did the author tried to exploit traced DPO in the (Co)Cartesian case, do deals with fixpoint equations? If yes, can they say something about it?


----------------------- REVIEW 2 ---------------------
SUBMISSION: 22
TITLE: Rewriting modulo traced comonoid structure
AUTHORS: Dan Ghica and George Kaye

----------- Overall evaluation -----------
SCORE: 2 (accept)
----- TEXT:
SUMMARY

The paper is concerned about graph rewriting where nodes are equipped with
input and output ports, edges may be forked, joined, and graphs may have
loops.  This type of graph rewriting is useful for manipulating and
reasoning logic circuits and flowcharts.

In this paper the authors first give characterizations of graph structures
by traced terms (Theorem 24) and traced comonoid terms (Theorem 45). Then
they formulate the graph rewriting as rewriting modulo traced comonoid
structure. When formulating a rewrite step in the usual double pushout
framework, one has to guarantee unique existence of a pushout complement.
However, presence of Frobenius structure does not satisfy it.  The authors
resolve this problem by introducing a traced version of boundary
complements.

EVALUATION

Although I am not an expert in this area, I think that the presented
results are nice contributions to graph rewriting and its application
areas.  The quality of the presentation is already good enough.  Since most
of categorical notions introduced in the paper are illustrated by examples
with diagrams, even readers who are unfamiliar with category theory (like
this reviewer) would understand the main results.  I recommend acceptance.


MINOR COMMENTS

* I recommend to move Figures 4 - 6 from the appendix to the main part.
  Potential readers in application areas may not know the name of (traced)
  (co)monoid (with Frobenius structure).

* It might be helpful for readers if key notions for graph rewriting are
  briefly explained (like 'pushout complements correspond to
  contexts of rewrite steps.')

327, 380, 448: there exists -> there exist


------------------------------------------------------
