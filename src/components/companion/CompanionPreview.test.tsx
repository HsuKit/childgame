import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { CompanionThumbnail } from './CompanionThumbnail'

describe('companion previews', () => {
  it('renders the stable body image for a companion preview', () => {
    render(<CompanionThumbnail variant="Valkyrie_1" name="女武神" />)

    expect(screen.getByRole('img', { name: '女武神' }))
      .toHaveAttribute('src', '/assets/companions/Valkyrie_1/Body.png')
  })
})
