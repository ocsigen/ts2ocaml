type _svgElement<'a>
type svgElement_like<'a> = Dom.element_like<_svgElement<'a>>
type t = svgElement_like<Dom._baseClass>