# Reference Site Adaptation

Use this guide when the user provides one or more websites as visual references, asks to recreate a look, or wants to start from an existing site's style before changing it.

The goal is not to copy a site verbatim. The goal is to extract design lessons and translate them into a legally safer, product-appropriate UI MVP.

## When To Use

Use this flow when the user provides:

- a website URL
- screenshots of an existing site
- "make it look like this"
- "clone this style, then modify it"
- a competitor or inspiration page

## Adaptation Pipeline

1. reference intake
   - capture the URL or screenshot source
   - state whether the reference is owned by the user, public inspiration, or a competitor
   - note any terms, brand, copyright, or asset risks that should constrain the work

2. visual reconnaissance
   - identify layout structure, hierarchy, navigation, content density, rhythm, and responsive behavior
   - extract visual principles: type scale, spacing rhythm, color roles, contrast, surface treatment, imagery strategy, motion, and interaction cues
   - avoid treating every observed detail as required

3. design token translation
   - translate the reference into original tokens for the new product
   - define palette direction, typography intent, radius, spacing, elevation, border style, and motion rules
   - replace logos, names, copy, proprietary assets, and distinctive brand marks

4. UI MVP mapping
   - map the reference patterns onto the user's product objects and jobs
   - choose the primary surface from the product need, not from the reference by default
   - decide what to adapt, what to simplify, and what to reject

5. implementation readiness
   - output first-screen spec, required states, component roles, and acceptance criteria
   - define what can be mock data and what must be functional
   - include visual QA checks against the intended direction, not a pixel-perfect copy target

## Safety And Boundary Rules

- Do not help with phishing, impersonation, or deceptive clones.
- Do not copy logos, brand names, original copy, proprietary illustrations, or protected assets unless the user owns the rights.
- Do not promise pixel-perfect reproduction of a third-party site.
- Do not violate a site's terms of service or scrape behind authentication.
- Prefer "inspired by the layout logic and visual rhythm" over "identical clone."
- Preserve the user's product identity and domain logic.
- If the user owns the site or is migrating it, closer reconstruction is acceptable, but still document the rights assumption.

## Output Sections For UI_MVP.md

When references are used, include:

- reference sources
- rights and safety assumption
- adapted visual principles
- replaced or avoided brand-specific details
- translated design tokens
- first-screen adaptation plan
- visual QA criteria
- open risks or permissions questions

## Quality Bar

The result should feel like an original MVP with a clear reference lineage, not a disguised copy.
