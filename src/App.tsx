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
import WishShopPage from './pages/WishShopPage'
import CheckInPage from './pages/CheckInPage'
import ProfilePage from './pages/ProfilePage'
import LeaderboardPage from './pages/LeaderboardPage'
import PkPage from './pages/PkPage'
import PkQuizPage from './pages/PkQuizPage'
import PkResultPage from './pages/PkResultPage'
import MistakesPage from './pages/MistakesPage'
import MistakeDetailPage from './pages/MistakeDetailPage'
import ParentReportPage from './pages/ParentReportPage'

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
            <Route path="/wish-shop" element={<WishShopPage />} />
            <Route path="/checkin" element={<CheckInPage />} />
            <Route path="/profile" element={<ProfilePage />} />
            <Route path="/leaderboard" element={<LeaderboardPage />} />
            <Route path="/pk" element={<PkPage />} />
            <Route path="/pk/quiz" element={<PkQuizPage />} />
            <Route path="/pk/result" element={<PkResultPage />} />
            <Route path="/mistakes" element={<MistakesPage />} />
            <Route path="/mistakes/:id" element={<MistakeDetailPage />} />
            <Route path="/parent-report" element={<ParentReportPage />} />
          </Route>
        </Routes>
      </BrowserRouter>
    </ErrorBoundary>
  )
}
