create table note
(
    id      bigint not null auto_increment comment 'id，主键，自增',
    content text default null comment '笔记内容',
    primary key (id)
)
    engine = InnoDB
    default charset = utf8
    collate utf8_bin
    comment '笔记详情表';

create table node (
    id bigint not null auto_increment comment 'id，主键，自增',
    node_level smallint not null comment '节点层级',
    node_name varchar(50) not null comment '节点名称',
    parent_node bigint default null comment '父节点id',
    is_note
)