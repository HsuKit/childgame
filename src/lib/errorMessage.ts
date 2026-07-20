export function getErrorMessage(error: unknown, fallback: string): string {
  const message = error instanceof Error ? error.message : ''
  if (/failed to fetch|network|load failed/i.test(message)) {
    return '连接服务失败，请检查网络后重试'
  }
  return fallback
}
