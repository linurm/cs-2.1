.class public Lcom/vungle/publisher/db/model/ArchiveEntry;
.super Lcom/vungle/publisher/bi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/bi",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/db/model/LocalArchive;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Integer;

.field d:Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/db/model/LocalArchive$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vungle/publisher/bi;-><init>()V

    return-void
.end method

.method private d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->a:Lcom/vungle/publisher/db/model/LocalArchive;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->a:Lcom/vungle/publisher/db/model/LocalArchive;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalArchive;->D()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 130
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->t:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 132
    const-string v2, "id"

    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    :cond_0
    const-string v0, "viewable_id"

    invoke-direct {p0}, Lcom/vungle/publisher/db/model/ArchiveEntry;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "relative_path"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "size"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    return-object v1
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/bi$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->d:Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "archive_entry"

    return-object v0
.end method

.method public final m()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 113
    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->t:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/ArchiveEntry;->d()Ljava/lang/Integer;

    move-result-object v5

    .line 115
    iget-object v6, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->b:Ljava/lang/String;

    .line 116
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updating archive_entry by viewable_id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", relative_path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->u:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "archive_entry"

    invoke-virtual {p0, v7}, Lcom/vungle/publisher/db/model/ArchiveEntry;->a(Z)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "viewable_id = ? AND relative_path = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 120
    invoke-virtual {p0}, Lcom/vungle/publisher/bi;->w()V

    .line 125
    :goto_0
    return v0

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/vungle/publisher/bi;->m()I

    move-result v0

    goto :goto_0
.end method

.method protected final p()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-super {p0}, Lcom/vungle/publisher/bi;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    const-string v1, "viewable_id"

    invoke-direct {p0}, Lcom/vungle/publisher/db/model/ArchiveEntry;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 144
    const-string v1, "relative_path"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 145
    const-string v1, "size"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/ArchiveEntry;->c:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/bi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 146
    return-object v0
.end method
