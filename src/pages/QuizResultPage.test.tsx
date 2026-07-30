import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import { MemoryRouter } from 'react-router-dom'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import QuizResultPage from './QuizResultPage'

const mocks = vi.hoisted(() => ({
  startSession: vi.fn(),
  saveQuizRecords: vi.fn(),
  fetchToday: vi.fn(),
  markSubjectDone: vi.fn(),
  addPoints: vi.fn(),
  addExp: vi.fn(),
}))

const completedSession = {
  subject: 'math',
  questions: [{ id: 'q-1' }],
  currentIndex: 0,
  correctCount: 8,
  comboCount: 4,
  pointsEarned: 80,
  isComplete: true,
  records: [],
  recordsSaving: false,
  recordsSaved: true,
}

vi.mock('../stores/quizStore', () => ({
  useQuizStore: (selector: (state: object) => unknown) => selector({
    sessions: { chinese: null, math: completedSession, english: null },
    saveQuizRecords: mocks.saveQuizRecords,
    startSession: mocks.startSession,
  }),
}))

vi.mock('../stores/checkinStore', () => ({
  useCheckinStore: (selector?: (state: object) => unknown) => {
    const state = {
    today: { chinese_done: false, math_done: false, english_done: false },
    fetchToday: mocks.fetchToday,
    markSubjectDone: mocks.markSubjectDone,
    }
    return selector ? selector(state) : state
  },
}))

vi.mock('../stores/pointsStore', () => ({
  usePointsStore: (selector: (state: object) => unknown) => selector({ addPoints: mocks.addPoints }),
}))

vi.mock('../stores/companionStore', () => ({
  useCompanionStore: (selector: (state: object) => unknown) => selector({ addExp: mocks.addExp }),
}))

describe('QuizResultPage fresh practice', () => {
  beforeEach(() => {
    vi.clearAllMocks()
    mocks.startSession.mockResolvedValue(undefined)
    mocks.saveQuizRecords.mockResolvedValue(undefined)
    mocks.markSubjectDone.mockResolvedValue(0)
    mocks.addPoints.mockResolvedValue(undefined)
    mocks.addExp.mockResolvedValue(undefined)
  })

  it('creates a fresh subject session before leaving the completed result', async () => {
    render(
      <MemoryRouter initialEntries={['/quiz/result?subject=math']}>
        <QuizResultPage />
      </MemoryRouter>,
    )
    await screen.findByText('奖励已结算')

    fireEvent.click(screen.getByRole('button', { name: '再练一组' }))

    await waitFor(() => expect(mocks.startSession).toHaveBeenCalledWith('math'))
  })
})
