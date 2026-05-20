import { BrowserRouter, Routes, Route } from 'react-router-dom'
import { ErrorBoundary } from './components/common/ErrorBoundary'
import { AppLayout } from './components/layout/AppLayout'
import HomePage from './pages/HomePage'
import CompanionPage from './pages/CompanionPage'
import CompanionSelectPage from './pages/CompanionSelectPage'
import QuizPage from './pages/QuizPage'
import QuizResultPage from './pages/QuizResultPage'
import ChallengePage from './pages/ChallengePage'
import ChallengeResultPage from './pages/ChallengeResultPage'
import ShopPage from './pages/ShopPage'
import CheckInPage from './pages/CheckInPage'
import ProfilePage from './pages/ProfilePage'

export default function App() {
  return (
    <ErrorBoundary>
      <BrowserRouter>
        <Routes>
          <Route element={<AppLayout />}>
            <Route path="/" element={<HomePage />} />
            <Route path="/companion" element={<CompanionPage />} />
            <Route path="/companion/select" element={<CompanionSelectPage />} />
            <Route path="/quiz" element={<QuizPage />} />
            <Route path="/quiz/result" element={<QuizResultPage />} />
            <Route path="/challenge" element={<ChallengePage />} />
            <Route path="/challenge/result" element={<ChallengeResultPage />} />
            <Route path="/shop" element={<ShopPage />} />
            <Route path="/checkin" element={<CheckInPage />} />
            <Route path="/profile" element={<ProfilePage />} />
          </Route>
        </Routes>
      </BrowserRouter>
    </ErrorBoundary>
  )
}
