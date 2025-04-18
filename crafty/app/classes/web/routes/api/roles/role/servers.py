from app.classes.models.server_permissions import PermissionsServers
from app.classes.web.base_api_handler import BaseApiHandler


class ApiRolesRoleServersHandler(BaseApiHandler):
    def get(self, role_id: str):
        auth_data = self.authenticate_user()
        if not auth_data:
            return
        (
            _,
            _,
            _,
            superuser,
            _,
            _,
        ) = auth_data

        # GET /api/v2/roles/role/servers?ids=true
        get_only_ids = self.get_query_argument("ids", None) == "true"

        if not superuser:
            return self.finish_json(
                400,
                {
                    "status": "error",
                    "error": "NOT_AUTHORIZED",
                    "error_data": self.helper.translation.translate(
                        "validators", "insufficientPerms", auth_data[4]["lang"]
                    ),
                },
            )

        self.finish_json(
            200,
            {
                "status": "ok",
                "data": (
                    PermissionsServers.get_server_ids_from_role(role_id)
                    if get_only_ids
                    else self.controller.roles.get_server_ids_and_perms_from_role(
                        role_id
                    )
                ),
            },
        )
