# mini-factory

- topdown
- factory based
- point n' click
- unlockable areas
- tech tree
- power systems
- tiered machines


**Git Rules for Our Project (GitKraken Version)**

---

# 1. Branch Management
- Never commit directly to `main`.
- Work off of `dev` — it’s the team work-in-progress branch.
- Always create a new branch for:
  - Features
  - Bugfixes
  - Hotfixes
  - Refactors

Branch naming format:
- `feature/your-feature`
- `bugfix/what-you-fixed`
- `hotfix/urgent-fix`
- `refactor/code-cleanup`

In GitKraken:
- Right-click `dev` -> `Checkout new branch here...` -> Name it properly.

---

# 2. Pull Before You Start
- Always pull first.
- In GitKraken: Click `Pull` button (upper toolbar).
- Make sure you're on the right branch before pulling.

---

# 3. Committing
- Make small, focused commits.
- Commit messages format:
  ```
  <type>: <short description>
  ```
  Examples:
  - `feat: add machine activation system`
  - `fix: chest opening crash`
  - `refactor: clean up save manager`

In GitKraken:
- Stage your changes -> Write your message -> Commit.

---

# 4. Pushing
- Push after committing so your work is saved remotely.
- In GitKraken: Click `Push` button.

---

# 5. Merging
- Finish your feature/bugfix branch.
- Test your branch locally (run the game!).
- Open a Pull Request (PR) from your branch into `dev`.
- Merge after it's reviewed or tested.

In GitKraken:
- Right-click your branch -> `Start pull request`.

---

# 6. Solving Conflicts
- If GitKraken shows conflicts:
  - Use GitKraken’s conflict editor to resolve carefully.
  - Pick the correct changes.
  - Test after resolving.
  - Commit the merge resolution.

---

# 7. When To Branch
| Situation | Action |
|:----------|:-------|
| Adding a new system (inventory, loot) | New branch (`feature/xxx`) |
| Fixing a crash or bug | New branch (`bugfix/xxx`) |
| Emergency fix on live version | New branch (`hotfix/xxx`) |
| Cleaning up or moving code | New branch (`refactor/xxx`) |

---

# Quick GitKraken Workflow
1. Pull `dev` branch.
2. Make new branch (`feature/your-thing`).
3. Work and commit often.
4. Push your branch when ready.
5. Make a Pull Request into `dev`.
6. Merge after testing.

---

# Safety Tips for GitKraken
- Double-check your branch before pulling, committing, or pushing.
- Don't force-push unless you know exactly what you're doing.
- Always test your code before making a Pull Request.
- Write helpful commit messages — future-you will thank you.

---

**Stay clean, stay organized, and we'll build something awesome!**
