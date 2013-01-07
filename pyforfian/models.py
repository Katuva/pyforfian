from sqlalchemy import (
    Column,
    Integer,
    Text,
    String,
    Sequence,
    Unicode,
    )

from sqlalchemy.ext.declarative import declarative_base

from sqlalchemy.orm import (
    scoped_session,
    sessionmaker,
    )

from zope.sqlalchemy import ZopeTransactionExtension

DBSession = scoped_session(sessionmaker(extension=ZopeTransactionExtension()))
Base = declarative_base()

class User(Base):
    __tablename__ = 'users'
    id = Column(Integer, Sequence('user_id_seq'), primary_key=True)
    realname = Column(Unicode(75))
    username = Column(Unicode(50), unique=True)
    email = Column(Unicode(100), unique=True)
    password = Column(Unicode(75))

    def __init__(self, realname, username, email, password):
        self.realname = realname
        self.username = username
        self.email = email
        self.password = password
