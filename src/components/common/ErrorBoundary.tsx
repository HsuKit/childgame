import { Component, type ReactNode } from 'react'

interface Props { children: ReactNode }
interface State { hasError: boolean }

export class ErrorBoundary extends Component<Props, State> {
  state: State = { hasError: false }
  static getDerivedStateFromError() { return { hasError: true } }
  render() {
    if (this.state.hasError) {
      return (
        <div className="min-h-screen flex flex-col items-center justify-center p-6">
          <p className="text-5xl mb-4">😵</p>
          <h1 className="text-xl font-bold mb-2">哎呀，出错了!</h1>
          <button onClick={() => this.setState({ hasError: false })} className="btn-primary mt-4">重新加载</button>
        </div>
      )
    }
    return this.props.children
  }
}
