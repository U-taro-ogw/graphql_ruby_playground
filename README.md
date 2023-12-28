# README

## 環境構築

```bash
$ docker compose up -d --build
```

## DBschema

https://github.com/U-taro-ogw/graphql_ruby_playground/blob/master/db/schema.rb

## 速度検証


計測方法 rspec実行

<details > 
  <summary>Taskレコード数 100,000</summary>
  
```
# 1回目
Top 2 slowest example groups:
  query tasksArray
    6.46 seconds average (6.46 seconds / 1 example) ./spec/requests/graphql/queries/tasks_array_spec.rb:3
  query tasksActiveRecordRelation
    5.94 seconds average (5.94 seconds / 1 example) ./spec/requests/graphql/queries/tasks_active_record_relation_spec.rb:3


# 2回目
Top 2 slowest example groups:
  query tasksArray
    6.4 seconds average (6.4 seconds / 1 example) ./spec/requests/graphql/queries/tasks_array_spec.rb:3
  query tasksActiveRecordRelation
    5.81 seconds average (5.81 seconds / 1 example) ./spec/requests/graphql/queries/tasks_active_record_relation_spec.rb:3


# 3回目
Top 2 slowest example groups:
  query tasksArray
    6.46 seconds average (6.46 seconds / 1 example) ./spec/requests/graphql/queries/tasks_array_spec.rb:3
  query tasksActiveRecordRelation
    5.81 seconds average (5.81 seconds / 1 example) ./spec/requests/graphql/queries/tasks_active_record_relation_spec.rb:3


# 4回目
Top 2 slowest example groups:
  query tasksArray
    6.4 seconds average (6.4 seconds / 1 example) ./spec/requests/graphql/queries/tasks_array_spec.rb:3
  query tasksActiveRecordRelation
    5.78 seconds average (5.78 seconds / 1 example) ./spec/requests/graphql/queries/tasks_active_record_relation_spec.rb:3


# 5回目
Top 2 slowest example groups:
  query tasksArray
    6.39 seconds average (6.39 seconds / 1 example) ./spec/requests/graphql/queries/tasks_array_spec.rb:3
  query tasksActiveRecordRelation
    5.85 seconds average (5.85 seconds / 1 example) ./spec/requests/graphql/queries/tasks_active_record_relation_spec.rb:3

```
</details>
