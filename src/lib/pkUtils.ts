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
