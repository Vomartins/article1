# Revision tracker — IEEE TPDS round 1

**Status values:** `pending` → `proposed` → `approved` → `applied` → (or `deferred`,
`rebutted`, `blocked`)

`blocked` means a NEEDS-AUTHOR-INPUT block was emitted and the author has not yet
responded. A blocked comment is not a failure — it is the workflow doing its job.

Rows are ordered by the reviewer's numbering, not by priority. Suggested working order is
at the bottom.

| ID | Summary | Type | Status | Files | Commit |
|---|---|---|---|---|---|
| R1.C0 | General assessment: language, structure, presentation | author-input | pending | | |
| R1.C1 | Expand literature review of solver-performance studies | reference, author-input | blocked | | |
| R1.C2 | "Computational Flow Dynamics" → fluid; CFD novelty claim overstated | textual | pending | | |
| R1.C3 | "realism" — does this mean accuracy? | clarification | pending | | |
| R1.C4 | "bigger" → "larger", recurs throughout | textual, global | pending | | |
| R1.C5 | Remove unnecessary module example | textual | pending | | |
| R1.C6 | Reference for the "90% of simulation time" claim | reference, author-input | blocked | | |
| R1.C7a | Expand acronyms on first use (recurs throughout) | textual, global | pending | | |
| R1.C7b | Cite original works: DUNE, GMRES, BiCGSTAB | reference | blocked | | |
| R1.C8 | Define "non-contributing computation" | author-input | blocked | | |
| R1.C9 | Replace Stone Ridge URL with Wallis/Kendall/Little (10.2118/13536-MS) | reference | blocked | | |
| R1.C10 | Split paragraph at "To support large-scale"; long paragraphs recur | structural, global | pending | | |
| R1.C11 | Define "bridge" — middleware? (renaming propagates) | author-input | blocked | | |
| R1.C12 | Define "manual solver" (renaming propagates) | author-input | blocked | | |
| R1.C13 | State the evaluation metrics in the contributions | clarification | pending | | |
| R1.C14 | Better reference than the OPM wiki for [14] | reference, author-input | blocked | | |
| R1.C15 | Saturation is a variable — do you mean initial conditions? | author-input | blocked | | |
| R1.C16 | Explain "component"; introduce the black-oil equations | author-input, structural | blocked | | |
| R1.C17 | "non-miscible" → "immiscible" | textual | pending | | |
| R1.C18 | Inline Equation (1) into the paragraph | structural | pending | | |
| R1.C19 | Figure 1 caption and reference: flowchart, not "general structure" | textual | pending | | |
| R1.C20 | "reservoir is modeled by a grid" → discretized via a mesh | textual | pending | | |
| R1.C21 | What makes the corner-point grid "irregular"? | author-input | blocked | | |
| R1.C22 | Introduce the theta direction | clarification | pending | | |
| R1.C23 | "Grids cannot be combined" — which reading? | author-input | blocked | | |
| R1.C24 | Define the meaning of M and N | clarification | pending | | |
| R1.C25 | "unitriangular" → lower triangular with unit diagonal | textual | pending | | |
| R1.C26 | Wrong cross-reference to Equation (1) | clarification | pending | | |
| R1.C27 | Awkward phrasing: "ILU0 application" | textual | pending | | |
| R1.C28 | Algorithm 1 conveys nothing — omit | structural | pending | | |
| R1.C29 | Algorithm 2: output, a_ii, S, empty if-branch | author-input | blocked | | |
| R1.C30 | "designed for display purposes" → graphical applications | textual | pending | | |
| R1.C31 | Clarify what "has enough parallelism" means | clarification | pending | | |
| R1.C32 | Remove Table 1 | structural | pending | | |
| R1.C33 | Define spmv | clarification | pending | | |
| R1.C34 | Define N on p. 5 (resolve with C24) | clarification | pending | | |
| R1.C35 | Explain transmissibility-based partitioning | author-input | blocked | | |
| R1.C36 | Remove Algorithm 3, describe in prose | structural | pending | | |
| R1.C37 | Rewrite Algorithms 4 and 5 as equations | structural, author-input | blocked | | |
| R1.C38 | Why store D^{-1}? | author-input | blocked | | |
| R1.C39a | Figure 2: float placement and descriptive caption | structural | pending | | |
| R1.C39b | Figure 2: redraw with a smaller example | figure | blocked | | |
| R1.C40 | "grid size increased" — refined, coarsened, or extended? | author-input | blocked | | |
| R1.C41 | Describe heterogeneities of the proprietary model | author-input | blocked | | |
| R1.C42 | Figure 4: simplify notation, use charts per stage | figure, author-input | blocked | | |
| R1.C43 | Figure 3 never referenced | textual | pending | | |
| R1.C44 | Remove the merge-commit sentence | textual | pending | | |
| R1.C45 | Remove the Simula description (check citation [37]) | textual | pending | | |
| R1.C46 | Add reference for "our previous work" | reference | blocked | | |
| R1.C47 | Describe the ILU0 optimization | author-input | blocked | | |
| R1.C48 | Explain why the 1.35x slowdown is surprising | author-input | blocked | | |
| R1.C49 | Remove "left as an exercise for the reader" | textual | pending | | |
| R1.C50 | Describe what scale_bsrsv2 does | author-input | blocked | | |
| R1.C51 | 118→196 GB/s is +66%, not "almost doubled" | textual | pending | | |
| R1.C52 | Report the omniperf issues for NORNE | author-input | blocked | | |
| R1.C53 | Table X referenced before Table IX | structural | pending | | |
| R1.C54 | Explain the row labels of Table IX | author-input | blocked | | |
| R1.C55 | "reduce the cost" → reduce the number of memory accesses | textual | pending | | |
| R1.C56 | Omit Appendix A | structural, author-input | blocked | | |

## Counts

- 58 tracked units (56 reviewer remarks; C7 and C39 split in two; C0 added for the
  general assessment)
- 27 startable now (`textual`, `clarification`, `structural`)
- 31 blocked pending author input, new references, or figure work

## Suggested order

1. **Answer the blocking questions first.** C11, C12, C24/C34, C40 and C23 settle
   terminology and meaning that other edits depend on. Editing prose before these are
   fixed means editing it twice.
2. **Resolve C26 before C18.** Both concern Equation (1); the cross-reference error has to
   be understood before the equation is inlined.
3. **Then the structural deletions:** C28, C32, C36, C56, C39a, C53. These change
   numbering and free page budget, so do them before fine wording work.
4. **Then the sweeps:** C4, C7a, C10. One inventory each, one approval, one commit per file.
5. **Then the isolated textual fixes** — the long tail, cheap and low-risk.
6. **In parallel, off the critical path:** collect the BibTeX entries for C1, C6, C7b, C9,
   C14, C46, and redo the figures for C39b and C42.

## Load-bearing dependencies

- C24 ↔ C34 — one definition of N, applied in two places
- C26 → C18 — fix the reference before inlining the equation
- C28, C36 → C29, C37 — algorithm renumbering
- C32 → C53, C54 — table renumbering
- C11, C12 → sweep — a rename touches every occurrence
- C45 → C46 — both involve Simula; check citation [37] survives the deletion
- C1 ← C56 — material cut from Appendix A may belong in the literature review
- C51 — the numbers 118 and 196 are data. They do not change.
