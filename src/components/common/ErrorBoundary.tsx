import { Component, type ReactNode } from 'react'
import { StatePanel } from '../ui/StatePanel'

interface Props { children: ReactNode }
interface State { hasError: boolean }

export class ErrorBoundary extends Component<Props, State> {
  state: State = { hasError: false }
  static getDerivedStateFromError() { return { hasError: true } }
  render() {
    if (this.state.hasError) {
      return (
        <div className="min-h-dvh bg-adventure-bg p-4"><div className="mx-auto mt-[20vh] max-w-lg"><StatePanel tone="error" title="页面遇到问题" message="你的数据没有丢失，可以重新加载当前页面。" actionLabel="重新加载" onAction={() => this.setState({ hasError: false })} /></div></div>
      )
    }
    return this.props.children
  }
}
