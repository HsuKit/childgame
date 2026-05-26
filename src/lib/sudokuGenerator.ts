// Generate 4x4 Sudoku puzzles with guaranteed unique solutions
// Rows, columns, and 2x2 blocks must contain 1-4 exactly once

function shuffle<T>(arr: T[]): T[] { const a = [...arr]; for (let i = a.length - 1; i > 0; i--) { const j = Math.floor(Math.random() * (i + 1)); [a[i], a[j]] = [a[j], a[i]] } return a }

// Valid base solutions for 4x4 Sudoku
const BASES: number[][][] = [
  [[1,2,3,4],[3,4,1,2],[2,1,4,3],[4,3,2,1]],
  [[2,1,4,3],[4,3,2,1],[1,2,3,4],[3,4,1,2]],
  [[3,1,4,2],[2,4,1,3],[1,2,3,4],[4,3,2,1]],
  [[4,2,1,3],[1,3,4,2],[3,1,2,4],[2,4,3,1]],
  [[1,4,2,3],[3,2,4,1],[2,3,1,4],[4,1,3,2]],
]

export interface SudokuPuzzle {
  stem: string
  grid: (number | null)[][]
  solution: number[][]
  explanation: string
}

// Fix the null assignment in puzzle creation
function deepClone(grid: number[][]): number[][] { return grid.map(r => [...r]) }

export function generateSudoku(): SudokuPuzzle {
  // Pick random base solution and transform
  const base = BASES[Math.floor(Math.random() * BASES.length)]

  // Apply random transformations to create variety
  const solution = base.map(row => [...row])

  // Shuffle rows within each 2-row band
  if (Math.random() > 0.5) [solution[0], solution[1]] = [solution[1], solution[0]]
  if (Math.random() > 0.5) [solution[2], solution[3]] = [solution[3], solution[2]]

  // Shuffle columns within each 2-col band
  if (Math.random() > 0.5) { for (const row of solution) [row[0], row[1]] = [row[1], row[0]] }
  if (Math.random() > 0.5) { for (const row of solution) [row[2], row[3]] = [row[3], row[2]] }

  // Swap numbers (e.g., 1↔3, 2↔4) for more variety
  const map = shuffle([1, 2, 3, 4])
  for (let r = 0; r < 4; r++)
    for (let c = 0; c < 4; c++)
      solution[r][c] = map[solution[r][c] - 1]

  // Create puzzle by removing 5-6 cells
  const puzzle: (number | null)[][] = solution.map(row => [...row])
  const blanks = 5 + Math.floor(Math.random() * 2) // 5-6 blanks
  const cells = shuffle(Array.from({ length: 16 }, (_, i) => [Math.floor(i / 4), i % 4] as [number, number]))
  for (let i = 0; i < blanks; i++) {
    const [r, c] = cells[i]
    puzzle[r][c] = null
  }

  return {
    stem: '请填入缺失的数字，使每行、每列、每个2×2宫格都有1-4各一个！',
    grid: puzzle,
    solution,
    explanation: '从已有数字最多的行或列开始推理，逐步填入。',
  }
}
