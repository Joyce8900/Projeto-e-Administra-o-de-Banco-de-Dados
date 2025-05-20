from django.db import migrations

def inserir_atividade(apps, schema_editor):
    Projeto = apps.get_model('meu_app', 'Projeto')
    Atividade = apps.get_model('meu_app', 'Atividade')
    
    projeto = Projeto.objects.get(id=1)  # Substitua pelo ID do projeto desejado
    Atividade.objects.create(
        descricao="Implementar autenticação via migração",
        projeto=projeto,
        data_inicio="2025-05-25",
        data_fim="2025-06-05"
    )

class Migration(migrations.Migration):
    dependencies = [
        ('meu_app', '000X_previous_migration'),  # Substitua X pelo número da última migração
    ]

    operations = [
        migrations.RunPython(inserir_atividade),
    ]