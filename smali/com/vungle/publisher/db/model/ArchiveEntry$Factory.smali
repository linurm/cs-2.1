.class public Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;
.super Lcom/vungle/publisher/bi$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/ArchiveEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/bi$a",
        "<",
        "Lcom/vungle/publisher/db/model/ArchiveEntry;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/db/model/ArchiveEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/vungle/publisher/bi$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Integer;)I
    .locals 6

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null viewable_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;->c:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "archive_entry"

    const-string v2, "viewable_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 169
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " archive_entry rows for viewable_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return v0
.end method

.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/vungle/publisher/bi$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/bi;Landroid/database/Cursor;)Lcom/vungle/publisher/bi;
    .locals 1

    .prologue
    .line 149
    check-cast p1, Lcom/vungle/publisher/db/model/ArchiveEntry;

    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/bg;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/ArchiveEntry;->t:Ljava/lang/Object;

    const-string v0, "relative_path"

    invoke-static {p2, v0}, Lcom/vungle/publisher/bg;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/ArchiveEntry;->b:Ljava/lang/String;

    const-string v0, "size"

    invoke-static {p2, v0}, Lcom/vungle/publisher/bg;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/ArchiveEntry;->c:Ljava/lang/Integer;

    return-object p1
.end method

.method final a(Lcom/vungle/publisher/db/model/LocalArchive;)[Lcom/vungle/publisher/db/model/ArchiveEntry;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 226
    if-nez p1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null archive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/LocalArchive;->D()Ljava/lang/Integer;

    move-result-object v5

    .line 230
    if-nez v5, :cond_1

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null viewable_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    :try_start_0
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetching archive_entry records by viewable_id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;->c:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "archive_entry"

    const/4 v2, 0x0

    const-string v3, "viewable_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 240
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Lcom/vungle/publisher/db/model/ArchiveEntry;

    move v0, v9

    .line 241
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;->b()Lcom/vungle/publisher/db/model/ArchiveEntry;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;->b(Lcom/vungle/publisher/bi;Landroid/database/Cursor;)Lcom/vungle/publisher/bi;

    iput-object p1, v3, Lcom/vungle/publisher/db/model/ArchiveEntry;->a:Lcom/vungle/publisher/db/model/LocalArchive;

    aput-object v3, v2, v0

    .line 243
    const-string v4, "VungleDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fetched "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_2
    if-eqz v1, :cond_3

    .line 248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_3
    return-object v2

    .line 247
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_4

    .line 248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 247
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method final b()Lcom/vungle/publisher/db/model/ArchiveEntry;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/ArchiveEntry;

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final bridge synthetic c(I)[Lcom/vungle/publisher/bi;
    .locals 1

    .prologue
    .line 149
    new-array v0, p1, [Lcom/vungle/publisher/db/model/ArchiveEntry;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/bi;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/ArchiveEntry$Factory;->b()Lcom/vungle/publisher/db/model/ArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/vungle/publisher/bi$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/vungle/publisher/bi$a;->d(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final e_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string v0, "archive_entry"

    return-object v0
.end method
