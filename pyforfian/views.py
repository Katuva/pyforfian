from pyramid.response import Response
from pyramid.view import view_config

from sqlalchemy.exc import DBAPIError

from .models import (
    DBSession,
    User,
    )

@view_config(route_name='index', renderer='index.mak')
def index_view(request):
    return {'project': 'PyForfian'}

@view_config(route_name='license', renderer='license.mak')
def license_view(request):
    return {}