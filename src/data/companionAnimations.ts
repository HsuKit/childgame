// Minimal Lottie animation data for companion idle effects
// These are tiny embedded animations, no external downloads needed

export const IDLE_PULSE = {
  v: '5.5.7', fr: 30, ip: 0, op: 60, w: 120, h: 120, nm: 'Pulse',
  ddd: 0, assets: [],
  layers: [{
    ddd: 0, ind: 1, ty: 4, nm: 'Pulse', sr: 1, ks: {
      o: { a: 1, k: [{ t: 0, s: [100] }, { t: 15, s: [40] }, { t: 30, s: [100] }, { t: 45, s: [40] }, { t: 60, s: [100] }] },
      r: { a: 0, k: 0 }, p: { a: 0, k: [60, 60, 0] }, a: { a: 0, k: [0, 0, 0] },
      s: { a: 1, k: [{ t: 0, s: [100, 100, 100] }, { t: 15, s: [110, 110, 100] }, { t: 30, s: [100, 100, 100] }, { t: 45, s: [110, 110, 100] }, { t: 60, s: [100, 100, 100] }] }
    }, ao: 0,
    shapes: [{
      ty: 'el', d: 1, s: { a: 0, k: [60, 60] }, p: { a: 0, k: [0, 0] },
      nm: 'Ellipse', closed: true
    }, {
      ty: 'fl', c: { a: 0, k: [0.42, 0.36, 0.91, 1] }, o: { a: 0, k: 30 },
      r: 1, nm: 'Fill'
    }, {
      ty: 'st', c: { a: 0, k: [0.42, 0.36, 0.91, 1] }, o: { a: 0, k: 50 },
      w: { a: 0, k: 3 }, lc: 1, lj: 1, nm: 'Stroke'
    }]
  }]
}

// Simple bounce animation
export const BOUNCE = {
  v: '5.5.7', fr: 30, ip: 0, op: 45, w: 120, h: 120, nm: 'Bounce',
  ddd: 0, assets: [],
  layers: [{
    ddd: 0, ind: 1, ty: 4, nm: 'Bounce', sr: 1, ks: {
      o: { a: 0, k: 100 }, r: { a: 0, k: 0 },
      p: { a: 1, k: [{ t: 0, s: [60, 60, 0] }, { t: 10, s: [60, 40, 0] }, { t: 20, s: [60, 75, 0] }, { t: 30, s: [60, 55, 0] }, { t: 45, s: [60, 60, 0] }] },
      a: { a: 0, k: [0, 0, 0] }, s: { a: 1, k: [{ t: 0, s: [100, 100, 100] }, { t: 10, s: [90, 110, 100] }, { t: 20, s: [110, 90, 100] }, { t: 30, s: [100, 100, 100] }, { t: 45, s: [100, 100, 100] }] }
    }, ao: 0,
    shapes: [{
      ty: 'el', d: 1, s: { a: 0, k: [50, 50] }, p: { a: 0, k: [0, 0] },
      nm: 'Ellipse', closed: true
    }, {
      ty: 'fl', c: { a: 0, k: [1, 0.76, 0.22, 1] }, o: { a: 0, k: 30 },
      r: 1, nm: 'Fill'
    }, {
      ty: 'st', c: { a: 0, k: [1, 0.76, 0.22, 1] }, o: { a: 0, k: 50 },
      w: { a: 0, k: 2 }, lc: 1, lj: 1, nm: 'Stroke'
    }]
  }]
}

// Sparkle effect for evolution/celebration
export const SPARKLE = {
  v: '5.5.7', fr: 30, ip: 0, op: 30, w: 120, h: 120, nm: 'Sparkle',
  ddd: 0, assets: [],
  layers: [{
    ddd: 0, ind: 1, ty: 4, nm: 'Star', sr: 1, ks: {
      o: { a: 1, k: [{ t: 0, s: [0] }, { t: 5, s: [100] }, { t: 20, s: [100] }, { t: 30, s: [0] }] },
      r: { a: 1, k: [{ t: 0, s: [0] }, { t: 30, s: [360] }] },
      p: { a: 0, k: [60, 60, 0] }, a: { a: 0, k: [0, 0, 0] },
      s: { a: 1, k: [{ t: 0, s: [0, 0, 100] }, { t: 5, s: [100, 100, 100] }, { t: 25, s: [80, 80, 100] }, { t: 30, s: [0, 0, 100] }] }
    }, ao: 0,
    shapes: [{
      ty: 'sr', d: 1, sy: 5, pt: { a: 0, k: 5 },
      p: { a: 0, k: [0, 0] }, r: { a: 0, k: 0 },
      or: { a: 0, k: 30 }, os: { a: 0, k: 15 },
      nm: 'Star', closed: true
    }, {
      ty: 'fl', c: { a: 0, k: [1, 0.83, 0.26, 1] }, o: { a: 0, k: 80 },
      r: 1, nm: 'Fill'
    }]
  }]
}
