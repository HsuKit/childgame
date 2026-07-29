export type AppSection = 'adventure' | 'companion' | 'rewards' | 'camp'
export type LayoutMode = 'standard' | 'focus'

export interface RouteMeta {
  section: AppSection
  layout: LayoutMode
}

const FOCUS_ROUTES = new Set([
  '/quiz',
  '/quiz/result',
  '/challenge',
  '/challenge/result',
  '/pk/quiz',
  '/pk/result',
  '/companion/select',
])

export function getRouteMeta(pathWithSearch: string): RouteMeta {
  const pathname = pathWithSearch.split('?')[0]

  if (FOCUS_ROUTES.has(pathname) || pathname.startsWith('/mistakes/')) {
    return {
      section: pathname.startsWith('/companion') ? 'companion' : 'adventure',
      layout: 'focus',
    }
  }

  if (pathname === '/companion' || pathname === '/shop') {
    return { section: 'companion', layout: 'standard' }
  }

  if (pathname === '/rewards' || pathname === '/wish-shop' || pathname === '/leaderboard') {
    return { section: 'rewards', layout: 'standard' }
  }

  if (pathname === '/profile' || pathname === '/parent-report' || pathname === '/parent-wishes') {
    return { section: 'camp', layout: 'standard' }
  }

  return { section: 'adventure', layout: 'standard' }
}
