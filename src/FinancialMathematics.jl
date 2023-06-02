module FinancialMathematics

export u, v, d, i, ani, dani, sni, dsni, Dani, Dsni, Ddani, Iani, Idani, Isni, Idsni, PQani, PQdani, PQsni, PQdsni

function u(n, i)
  return (1 + i)^n
end

function v(n, i)
  return 1 / (1 + i)^n
end

function v(i)
  return 1 / (1 + i)
end

function d(i)
  return i / (1 + i)
end

function i(d)
  return d / (1 - d)
end

function ani(n,i)
  return (1 - v(n, i)) / i
end

function dani(n,i)
  return (1 - v(n, i)) / d(i)
end

function sni(n,i)
  return ((1+i)^n - 1) / i
end

function dsni(n,i)
  return ((1+i)^n - 1) / d(i)
end

function Dani(n,i)
  return (n - ani(n,i)) / i
end

function Ddani(n,i)
  return (n - ani(n,i)) / d(i)
end

function Iani(n,i)
  return (dani(n,i) - n*v(n, i)) / i
end

function Idani(n,i)
  return (dani(n,i) - n*v(n, i)) / d(i)
end

function Isni(n,i)
  return (dsni(n,i) - n) / i
end

function Idsni(n,i)
  return (dsni(n,i) - n) / d(i)
end

function Dsni(n,i)
  return Dani(n,i) * u(n, i)
end

function PQani(n,i, P, Q)
  return (P * ani(n, i)) + (Q * (ani(n,i) - n*v(n,i)) / i)
end

function PQdani(n,i, P, Q)
  return PQani(n,i, P, Q) * (1 + i)
end

function PQsni(n,i, P, Q)
  return PQani(n,i, P, Q) * u(n, i)
end

function PQdsni(n,i, P, Q)
  return PQdani(n,i, P, Q) * u(n, i)
end


end # module FinancialMathematics
