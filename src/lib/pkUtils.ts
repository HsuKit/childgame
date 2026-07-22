import type { Subject } from './constants'

export function buildCreatorPkQuizPath({
  challengeId,
  subject,
}: {
  challengeId: string
  subject: Subject
}) {
  return `/pk/quiz?challenge=${encodeURIComponent(challengeId)}&subject=${encodeURIComponent(subject)}`
}

export function getPkResultState({
  creatorId,
  currentUserId,
  creatorScore,
  opponentScore,
}: {
  creatorId: string
  currentUserId: string | undefined
  creatorScore: number | null
  opponentScore: number | null
}) {
  const isCreator = creatorId === currentUserId
  const myScore = isCreator ? creatorScore : opponentScore
  const oppScore = isCreator ? opponentScore : creatorScore
  const oppDone = oppScore !== null
  const iWon = oppDone && myScore !== null && myScore > oppScore
  const tie = oppDone && myScore !== null && myScore === oppScore

  return { isCreator, myScore, oppScore, oppDone, iWon, tie }
}
