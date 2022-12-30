# Generated by Django 4.1.4 on 2022-12-30 10:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("api", "0002_rename_notes_note"),
    ]

    operations = [
        migrations.AlterModelOptions(
            name="note",
            options={"ordering": ["updated", "created"]},
        ),
        migrations.AddField(
            model_name="note",
            name="updated",
            field=models.DateTimeField(auto_now=True),
        ),
    ]