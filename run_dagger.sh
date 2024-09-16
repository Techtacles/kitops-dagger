
# Initialize kit
dagger -m github.com/jozu-ai/modelkit-factory/modules/kit@be110f46791083f69c44a509a7d2a667da50d6e3 call --registry ghcr.io
# Gets the kit version
dagger -m github.com/jozu-ai/modelkit-factory/modules/kit@be110f46791083f69c44a509a7d2a667da50d6e3 call version
#Gets the registry
dagger -m github.com/jozu-ai/modelkit-factory/modules/kit@be110f46791083f69c44a509a7d2a667da50d6e3 call registry
# Packs the kit with the champion tag
dagger -m github.com/jozu-ai/modelkit-factory/modules/kit@be110f46791083f69c44a509a7d2a667da50d6e3 call pack --directory . --reference ghcr.io/techtacles/kitops-dagger:champion --kitfile Kitfile
# Authenticate
dagger -m github.com/jozu-ai/modelkit-factory/modules/kit@be110f46791083f69c44a509a7d2a667da50d6e3 call --registry ghcr.io with-auth --username <github username>--password env:<password env var key>
# Push to ghcr

#dagger -m github.com/jozu-ai/modelkit-factory/modules/kit@be110f46791083f69c44a509a7d2a667da50d6e3 call with-auth --username techtacles --password env:password





dagger -m github.com/jozu-ai/modelkit-factory/modules/kit@be110f46791083f69c44a509a7d2a667da50d6e3 call --registry ghcr.io with-auth --username techtacles --password env:password pack --directory . --reference ghcr.io/techtacles/kitops-dagger:champion --kitfile Kitfile push --reference ghcr.io/techtacles/kitops-dagger:champion
