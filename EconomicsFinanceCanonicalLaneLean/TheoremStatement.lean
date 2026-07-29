import HautevilleHouse.EconomicsFinanceCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "economics-finance-canonical-lane",
    theoremName := "Economics Finance Canonical Theorem",
    theoremObject := "Arrow-Debreu equilibrium, utility theory, growth models, asset pricing",
    classicalBoundary := "unrestricted classical boundary carried",
    constrainedStatement := "constrained admissible closure internalized",
    certificateLane := "manifold_constrained",
    carriedRemainder := "carried remainder" }

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse