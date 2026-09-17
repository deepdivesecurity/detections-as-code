# Detections-as-Code Starter

## Overview


## Development Process


## AI Design


## Technical Design


## State Management Policy

Applies to:

- tasks/decisions.md
- tasks/logs.md
- tasks/todo.md

---

### 1. tasks/decisions.md
#### Purpose
Permanent record of architectural and strategic decisions.

#### When To Update
Must be updated when:

- A new architectural pattern is introduced
- A new infrastructure dependency is added
- A breaking API change is approved
- A security posture change occurs
- A core principle is modified

#### Format
Each decision must include:

ID:
Date:
Status: Proposed / Approved / Deprecated
Context:
Decision:
Consequences:

---

### 2. tasks/logs.md
#### Purpose
Chronological record of significant technical changes.

#### When To Update
Must be updated when:

- A feature is completed
- A bug fix is merged
- A refactor changes behavior
- A security mitigation is added
- Infrastructure changes

#### Format
#### YYYY-MM-DD
- Short bullet summary
- Reference to decision ID (if applicable)

---

### 3. tasks/todo.md
#### Purpose
Active task tracking.

#### When To Update
- New tasks
- Follow-up actions
- Bug fixes

Builder does not create tasks unless instructed.

---

### 4. Mutation Rules
- Agents may append.
- Agents must not rewrite history.
- Decisions cannot be deleted - only deprecated.
- Logs must remain chronological.
- No retroactive modification without explicit instruction.

---
