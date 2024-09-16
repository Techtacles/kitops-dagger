import dagger
from dagger import dag, function, object_type


@object_type
class KitopsDagger:
    @function
    def kit() -> dag.Kit:
        return (
            dag.kit()
        )

    @function
    async def version() -> str:
        return await (
            dag.kit()
            .version()
        )

    @function
    async def registry() -> str:
        return await (
            dag.kit()
            .registry()
        )

    @function
    def auth(username: str, password: dagger.Secret) -> dag.Kit:
        return (
            dag.kit()
            .with_auth(username, password)
        )

    @function
    def pack(directory: dagger.Directory, reference: str) -> dag.Kit:
        return (
            dag.kit()
            .pack(directory, reference)
        )
    
    @function
    def tag(current_ref: str, new_ref: str) -> dag.Kit:
        return (
            dag.kit()
            .tag(current_ref, new_ref)
        )

    @function
    async def push(reference: str) -> None:
        return await (
            dag.kit()
            .push(reference)
        )
