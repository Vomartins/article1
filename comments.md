# Reviewer comments — round 1

**Manuscript:** *An Evaluation and Comparison of GPU Hardware and Solver Libraries for
Accelerating the OPM Flow Reservoir Simulator*
Qiu, Thune, Oliveira Martins, Blatt, Rustad, Nane — IEEE TPDS
**Source:** `review/IEEE_TPDS_review1.pdf` (9 pages, one reviewer, 56 numbered remarks)
**Extracted:** 2026-08-07

## Conventions

- IDs are `R1.C<n>` where `<n>` is **the reviewer's own numbering**. Never renumber.
- Comment text is verbatim, including the reviewer's typos (`ellaborate`, `specifiy`,
  `This kind mistake`, `CFD simulations has been`). Do not silently correct them —
  the response letter quotes this text back.
- "Quoted text" is the reviewer's excerpt **of the manuscript**, reproduced as it appears
  in the report (with the reviewer's `[…]` elisions). Always locate the real sentence in
  the sources before proposing an edit; the excerpt may be truncated or lightly misquoted.
- Math symbols were lost by PDF text extraction in C18, C24, C25, C29, C34 and C38 and were
  restored from the rendered pages. Those six are marked **[symbols restored]** — verify
  against the PDF before quoting them in the response letter.

## Types

| Type | Meaning | Who drafts |
|---|---|---|
| `textual` | wording, grammar, deletion, rephrasing | Claude proposes |
| `structural` | move/remove/reorder an algorithm, table, figure, appendix | author decides, Claude executes |
| `clarification` | requires a new explanatory sentence grounded in the manuscript | Claude proposes, author verifies |
| `author-input` | only the authors know the answer | **blocked** — NEEDS-AUTHOR-INPUT |
| `reference` | requires a new or changed `refs.bib` entry | **blocked by R3** |
| `figure` | requires regenerating a figure | **blocked by R5** |
| `global` | the reviewer says the issue recurs throughout the paper | sweep protocol, §4b of CLAUDE.md |

---

## General assessment (not a numbered remark)

The reviewer judges the contribution valuable and the experiments well executed, but
considers structure, presentation and language to be seriously deficient: grammatical
errors, poorly constructed sentences, over-dense tables without clear labels, and figures
that do not convey the intended insight. This framing is the spine of the response letter —
`review/response-to-reviewers.tex` should open by addressing it directly. **ID: `R1.C0`**,
type `author-input`.

---

## Introduction

### R1.C1 — p. 1
**Comment:** In general, this section would benefit of a more detailed literature review citing more papers in the field that have performed similar assessments of the performance of linear solvers as it is proposed in the manuscript.
**Type:** `reference`, `author-input`
**Notes:** Requires selecting and adding new bibliography entries. Blocked by R3.

### R1.C2 — p. 1
**Quoted text:** "Computational Flow Dynamics (CFD) simulation is becoming extremely important to speed up […]"
**Comment:** CFD is typically referred to as "computational **fluid** dynamics". Furthermore, to say that CFD is becoming relevant only now is inaccurate. CFD simulations has been around for decades.
**Type:** `textual`
**Notes:** Two separable requests — (a) the terminology error, (b) the overstated novelty claim. Address both in one proposal but name them separately.

### R1.C3 — p. 1
**Quoted text:** "Furthermore, to improve the realism of the simulation […]"
**Comment:** What is meant by realism? Would that be accuracy?
**Type:** `clarification`
**Notes:** The reviewer offers "accuracy" — confirm this is what the authors meant rather than assuming it.

### R1.C4 — p. 1
**Quoted text:** "This leads to bigger systems […]"
**Comment:** Using "larger" instead of "bigger" would be more appropriate in this context. This issue is repeated multiple times throughout the paper.
**Type:** `textual`, `global`
**Notes:** Sweep protocol. Inventory every occurrence of "bigger"/"big" in the sources first.

### R1.C5 — p. 1
**Quoted text:** "The project is split into several modules, e.g., opm simulators […]"
**Comment:** Giving an example of one of the modules is unnecessary.
**Type:** `textual`

### R1.C6 — p. 1
**Quoted text:** "[…] for example, they may even take 90% or more of the simulation time for certain models."
**Comment:** What is the reference for this claim?
**Type:** `reference`, `author-input`
**Notes:** Either cite a source or weaken the claim to what the paper's own data supports. That is an author decision, not a drafting one.

### R1.C7 — p. 1
**Quoted text:** "Efficient iterative solvers available in DUNE library include GMRES and BiCGSTAB. […] with examples including AMG, and the well-known ILU0 […]"
**Comment:** Introduce the acronyms before using them. This kind mistake happens several times in the manuscript. Please revise where necessary. In addition, please add the appropriate references to the original works on DUNE, GMRES and BiCGSTAB.
**Type:** `textual`, `global`, `reference`
**Notes:** Split into two tracked units — **C7a** acronym expansion sweep (Claude can inventory and propose), **C7b** original-work citations for DUNE, GMRES, BiCGSTAB (blocked by R3). Related: C33 (spmv), C34 (N).

### R1.C8 — p. 1
**Quoted text:** "[…] achieved by avoiding non-contributing computations."
**Comment:** What is a non-contributing computation? Please explain it in the text.
**Type:** `author-input`
**Notes:** Terminology apparently coined by the authors. Do not guess a definition.

### R1.C9 — p. 1
**Quoted text:** "The Constrained Pressure Residual (CPR) [6] […]"
**Comment:** Instead of citing Stone Ridge's website, it would be more appropriate to cite the original paper by Wallis, Kendall, and Little (DOI: 10.2118/13536-MS).
**Type:** `reference`
**Notes:** The reviewer supplies the DOI, so the intent is unambiguous — but the BibTeX entry must be fetched from the publisher, never written from memory. Blocked by R3. Decide whether `[6]` is replaced or supplemented.

### R1.C10 — pp. 1–2
**Quoted text:** "It solves the mostly elliptic pressure system using an AMG preconditioner. To support large-scale […]"
**Comment:** Everything starting at "To support large-scale" should be a separate paragraph. This kind of long sentence/paragraph appear many times in the text. Please revise when needed.
**Type:** `structural`, `global`
**Notes:** The specific split is safe. The "many times in the text" part is a sweep and needs its own inventory.

### R1.C11 — p. 2
**Quoted text:** "Develop a custom open-source bridge […]"
**Comment:** What is a "bridge" in this context? Does this mean middleware?
**Type:** `author-input`
**Notes:** Naming decision that propagates through the paper — if "bridge" is renamed, every occurrence changes. Treat the rename as a sweep once the author decides.

### R1.C12 — p. 2
**Quoted text:** "Integrate both manual solvers […]"
**Comment:** What is a "manual solver"?
**Type:** `author-input`
**Notes:** Same propagation risk as C11.

### R1.C13 — p. 2
**Quoted text:** "Perform a thorough evaluation and comparison […]"
**Comment:** What metric is going to be used for this? Time? Memory usage? Number of iterations? Please specifiy.
**Type:** `clarification`
**Notes:** The metrics are already in the results sections — the fix is to state them in the contributions list. Claude may propose, grounded strictly in what the results actually report.

## Background

### R1.C14 — p. 2
**Quoted text:** "Reservoir simulation [13], [14] […]"
**Comment:** There are better references than OPM's wiki in [14].
**Type:** `reference`, `author-input`

### R1.C15 — p. 2
**Quoted text:** "Important rock properties are type, porosity, water saturation, and permeability."
**Comment:** The saturation of a phase is usually a simulation variable. Do the authors refer to the initial conditions of the medium?
**Type:** `author-input`
**Notes:** A technical correction, not a wording one. The reviewer is likely right; the authors must confirm.

### R1.C16 — p. 2
**Quoted text:** "The black oil model assumes three fluid phases […] and three components […]"
**Comment:** Explain the concept of a component as it might not be clear to all readers. In addition, briefly introduce the black-oil equations in this section.
**Type:** `author-input`, `structural`
**Notes:** **Substantial.** Adding the black-oil equations means new display equations and page-count impact. Related to C18, C24, C26. Scope this with the author before any drafting.

### R1.C17 — p. 2
**Quoted text:** "For non-miscible flow […]"
**Comment:** Use "immiscible flow" instead.
**Type:** `textual`
**Notes:** Check for other occurrences of "non-miscible" while here.

### R1.C18 — p. 2 **[symbols restored]**
**Comment:** Equation (1) can be incorporated into the paragraph to make it easier to read. A suggestion would be: "The oil pressure and water saturation are chosen, but the third variable may represent all three phases (s_g), no gaseous phase (r_go) or no oleic phase (r_og)."
**Type:** `structural`
**Notes:** Inlining Equation (1) interacts with C26, which says a later reference to Equation (1) is wrong. Resolve C26 first — if (1) is renumbered or removed, C26's fix changes. Adopting the reviewer's suggested sentence verbatim is an author decision.

### R1.C19 — p. 3
**Quoted text:** "Figure 1 shows the general structure of OPM Flow."
**Comment:** Figure 1 looks more like a flowchart of the simulation algorithm implemented by OPM Flow. Perhaps a more accurate description would be "the main steps in the OPM Flow simulation workflow". Please update the reference to the figure and its caption.
**Type:** `textual`
**Notes:** Caption + body text only. The figure artwork itself is unchanged, so R5 does not block this.

### R1.C20 — p. 3
**Quoted text:** "The reservoir is modeled by a grid […]"
**Comment:** This sentence is a bit too generic. A more precise formulation would be "the computational domain of the reservoir is discretized via a mesh".
**Type:** `textual`
**Notes:** Adopting "mesh" here may clash with "grid" terminology used throughout (C21, C22, C23). Check consistency before proposing.

### R1.C21 — p. 3
**Quoted text:** "For Irregular Corner-Point grids, coordinates lines or pillars are given to indicate x and y coordinates. Then, the top and bottom surfaces are specified by the z-coordinates of the cell's corner points along the for adjacent pillars."
**Comment:** From the description, the "irregular" corner-point grid sounds like the same as a typical corner-point grid. What would make it irregular? Please explain in the paragraph or just refer to it as a corner-point grid.
**Type:** `author-input`
**Notes:** The quoted sentence also contains a garble in the manuscript itself ("along the for adjacent pillars") — flag it as an incidental fix within the same proposal.

### R1.C22 — p. 3
**Quoted text:** "The radial grids are currently modeled as 2D cylindrical grids because no flow in the theta direction is implemented."
**Comment:** What is the theta direction? Please introduce the term before using.
**Type:** `clarification`

### R1.C23 — p. 3
**Quoted text:** "Grids cannot be combined in OPM."
**Comment:** Does this mean that one cannot use multiple types of grids or that two distinct grids cannot be merged into one? Please ellaborate.
**Type:** `author-input`
**Notes:** The two readings are factually different claims about OPM. Only the authors can say which is true.

### R1.C24 — p. 3 **[symbols restored]**
**Quoted text:** "[…] M and N are 4 and 3 for blackoil respectively."
**Comment:** It is clear that these are the values for M and N, but what do these numbers mean? Is M the number of variables and N the number of phases? Please clarify in the text.
**Type:** `clarification`
**Notes:** Must be resolved jointly with C34 (N redefined on p. 5). Decide one definition and apply it in both places.

### R1.C25 — p. 3 **[symbols restored]**
**Quoted text:** "[…] with unitriangular matrix L […]"
**Comment:** The term "unitriangular" is not standard. To make it clearer, it is better to refer to L as a lower triangular matrix with ones on the diagonal.
**Type:** `textual`

### R1.C26 — p. 3
**Quoted text:** "[…] which is equivalent to solving (1) […]"
**Comment:** Equation (1) does not represent a system of equations. Either correct the reference or rewrite it to make clear what equations are being solved.
**Type:** `clarification`
**Notes:** A genuine cross-reference error. Blocks C18. Identify the intended equation from the sources — do not guess a number.

### R1.C27 — p. 4
**Quoted text:** "In OPM terminology, this is called an ILU0 application […]"
**Comment:** The phrasing here is a bit awkward since using the ILU-0 procedure is called an application everywhere.
**Type:** `textual`

### R1.C28 — p. 4, Algorithm 1
**Comment:** The algorithm does not describe anything and could be omitted.
**Type:** `structural`
**Notes:** Deletion. Check for `\ref` to Algorithm 1 and for renumbering of Algorithms 2–5 (interacts with C29, C36, C37).

### R1.C29 — p. 4, Algorithm 2 **[symbols restored]**
**Comment:** The algorithm could have been much more descriptive. First, the output is the incomplete LU factorization. Thus, saying that it is "matrix A, but contains L and U" makes it confusing. Next, the notation a_ii is not introduced before using. What does it refer to? Also the variable S is never initialized or introduced. Finally, as written, the first if statement is empty, i.e., nothing happens if the condition is met. Is it just bad indentation? Please revise.
**Type:** `author-input`
**Notes:** Four separable defects, one of which (the empty `if`) may be a real bug in the published algorithm rather than a typesetting slip. Do not "fix" the algorithm's semantics — report and ask.

### R1.C30 — p. 4
**Quoted text:** "GPUs are traditionally designed for display purposes."
**Comment:** This is poorly written. A better phrasing would be "GPUs were originally designed for graphical applications".
**Type:** `textual`

### R1.C31 — p. 4
**Quoted text:** "[…] if the processing algorithm has enough parallelism."
**Comment:** What does it mean to "have" parallelism? Make it clearer.
**Type:** `clarification`

### R1.C32 — p. 4, Table 1
**Comment:** This table could be removed from the paper as it does not convey any relevant information for the reader.
**Type:** `structural`
**Notes:** Deletion; frees page budget. Check `\ref` usage and table renumbering (interacts with C53, C54).

## Implementation

### R1.C33 — p. 5
**Quoted text:** "When the wells are separate, the linear operation (spmv) […]"
**Comment:** For completeness, please define what spmv means and what operation it performs.
**Type:** `clarification`
**Notes:** Standard term; a definition can be proposed and verified. Part of the C7a acronym sweep.

### R1.C34 — p. 5 **[symbols restored]**
**Quoted text:** "[…] the elements of A are actually small, dense blocks of size NxN […]"
**Comment:** Define what N is here. If it is the same as in page 3, then just reinforce this here for clarity.
**Type:** `clarification`
**Notes:** Paired with C24. Single proposal covering both is justified here — note the exception explicitly in the tracker.

### R1.C35 — p. 6
**Quoted text:** "[…] if the partitioning is done in a smart way (using the transmissibilities)."
**Comment:** Briefly explain how the transmissibility values could be used for the partitioning.
**Type:** `author-input`

### R1.C36 — p. 6, Algorithm 3
**Comment:** This algorithm is unnecessary. The information presented in it is simple enough to be described in the text.
**Type:** `structural`
**Notes:** Deletion + replacement prose. Interacts with C28 renumbering.

### R1.C37 — p. 6, Algorithms 4 and 5
**Comment:** It might be easier to understand these algorithms if they were re-written as equations. Since these are simple enough and essentially illustrate an operation that is being applied to each well, the procedure can be described as an equation.
**Type:** `structural`, `author-input`
**Notes:** **Substantial.** Converting pseudocode to equations is a mathematical restatement, not a formatting change — the authors must supply or verify the equations.

### R1.C38 — p. 6 **[symbols restored]**
**Quoted text:** "For D, the inverse D^{-1} is stored instead, since multiplying with the inverse is easier."
**Comment:** Why is this the case? What properties D has that it is easier to apply its inverse? Please elaborate.
**Type:** `author-input`

### R1.C39 — p. 7, Figure 2
**Comment:** Move this figure closer to its reference. The first mention to it happens two pages before it is shown. In addition, use a more descriptive caption. What are the numbers in each side? Perhaps a smaller example would be easier to understand.
**Type:** `structural`, `figure`
**Notes:** Split — **C39a** float placement and caption (Claude may propose), **C39b** redrawing with a smaller example (blocked by R5, author only).

## Experimental Results

### R1.C40 — p. 7
**Quoted text:** "[…] in which the grid size is increased […]"
**Comment:** Probably this means that the grid is refined. Please be clearer if this is the case, as increasing the size of the grid could also mean increasing the size of the elements, thus reducing the resolution, or increasing the overall size of the computational domain.
**Type:** `author-input`
**Notes:** Three possible meanings; the authors must state which. Affects how the results are read, so worth resolving early.

### R1.C41 — p. 7
**Quoted text:** "Finally, the last benchmark used is proprietary […]"
**Comment:** Even though the data from this benchmark is not publicly available, it would be nice to briefly describe the heterogeneities in the model. This would give an idea of how hard it is solve it besides just the grid resolution.
**Type:** `author-input`
**Notes:** May also need a confidentiality check with the data owner.

### R1.C42 — p. 7, Figure 4
**Comment:** The notation used here is overly complicated and makes it very hard for the reader to understand the results. Simplify the steps here and use charts to visualize the time of simulation per stage.
**Type:** `figure`, `author-input`
**Notes:** **Substantial.** New charts must be generated from the measurement data. Blocked by R5 — Claude does not create or modify figures.

### R1.C43 — p. 8, Figure 3
**Comment:** This figure is never referenced in the text.
**Type:** `textual`
**Notes:** Either add a `\ref` in the right place or remove the figure — an author decision with page-count consequences.

### R1.C44 — p. 8
**Quoted text:** "Furthermore, when a certain date is mentioned, the latest merge commit before that date/time is used to perform the run."
**Comment:** This information is unnecessary and could be omitted.
**Type:** `textual`
**Notes:** Consider pushing to a reproducibility footnote instead of deleting outright — this sentence supports replication of the runs.

### R1.C45 — p. 8
**Quoted text:** "Simula [37] is a Norse research institute. Its main activities […]"
**Comment:** This information is not important in this context.
**Type:** `textual`
**Notes:** Deleting the sentence may orphan citation `[37]`. Check before proposing.

### R1.C46 — p. 8
**Quoted text:** "[…] to compare how the new hardware from Simula performs against our previous work […]"
**Comment:** What previous work? Please add a reference here.
**Type:** `reference`
**Notes:** A self-citation the authors can supply immediately — but the bib entry still comes from them, not from memory.

### R1.C47 — p. 8
**Quoted text:** "[…] we add an optimization technique for ILU0 preconditioner […]"
**Comment:** What kind of optimization is being done here? Please elaborate.
**Type:** `author-input`

### R1.C48 — p. 9
**Quoted text:** "[…] the experiments with an out-of-the-box configuration revealed a surprising 1.35x slowdown […]"
**Comment:** Explain why this results is surprising.
**Type:** `author-input`

### R1.C49 — p. 9
**Quoted text:** "However, an equivalent analysis can be performed for the other two use cases with approximately similar conclusions. This is left as an exercise for the reader because this can be easily inferred from Table VIII."
**Comment:** The second sentence ("This is left as an exercise [...]") is inadequate. You can remove it and keep just the first sentence ("However, an equivalent analysis [...]").
**Type:** `textual`
**Notes:** Cleanest comment in the report — an unambiguous deletion of one sentence.

### R1.C50 — p. 10
**Quoted text:** "The first thing we notice is the contrast between the scale_bsrsv2 […]"
**Comment:** What does the "scale_bsrsv2" do? Be more specific.
**Type:** `author-input`
**Notes:** Library-internal routine — describe its behaviour from the authors' knowledge of the implementation, not from a guess at the name.

### R1.C51 — p. 10
**Quoted text:** "[…] the bandwidth is almost doubled from 118 GB/s to 196 GB/s […]"
**Comment:** This sentence is misleading. The aforementioned increase is approximately equal to 66% or 1.66 times, not close to the double. Please rectify the text.
**Type:** `textual`
**Notes:** **Handle with care under R3.** The reviewer's arithmetic is correct (196/118 ≈ 1.66). The fix is to the *characterisation*, not the measurements: 118 and 196 stay exactly as they are. Any proposal that alters either number is a violation, not a fix.

### R1.C52 — p. 10
**Quoted text:** "Please note that due to issues with running omniperf for NORNE and NORNE modified, we report omniperf profile numbers only for the bigmod use case."
**Comment:** What issues were identified? Please report the problems that were encountered.
**Type:** `author-input`

### R1.C53 — p. 11, Table X
**Comment:** This table is being referenced before Table IX. Swap the order of the labels or the position of the tables in the text.
**Type:** `structural`
**Notes:** Renumbering cascades. Verify every `\ref` to Tables IX and X afterwards, and re-check if C32 removed Table 1.

### R1.C54 — p. 11, Table IX
**Comment:** The labels used for the rows in this tables are very confusing. Please describe what each operation means, as the reader most likely does not know what each function does.
**Type:** `author-input`
**Notes:** Each row label names a kernel or routine; only the authors can define them reliably. Relates to C50.

### R1.C55 — p. 11
**Quoted text:** "Therefore, one of the key conclusions to optimize is to reduce the cost for the memory transfers and copy (sic) to jacobi matrix."
**Comment:** The cost of the memory access itself cannot be changed as it is hardware-specific. You probably mean to reduce the number of accesses instead.
**Type:** `textual`
**Notes:** The reviewer's `(sic)` marks a grammatical break in the original sentence — the rewrite should fix that too. Appears in the conclusions, so check the abstract for a matching claim.

## Appendix A

### R1.C56
**Comment:** If no comparisons with other libraries and simulators are made, this appendix can be omitted. It does not contribute to the manuscript besides acknowledging other works, which could be done in the introduction.
**Type:** `structural`, `author-input`
**Notes:** Conditional — the condition ("if no comparisons are made") is for the authors to evaluate. Interacts with C1: material moved out of the appendix could strengthen the literature review.
