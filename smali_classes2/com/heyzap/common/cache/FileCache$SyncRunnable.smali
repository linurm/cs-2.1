.class Lcom/heyzap/common/cache/FileCache$SyncRunnable;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/cache/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncRunnable"
.end annotation


# instance fields
.field cache:Lcom/heyzap/common/cache/FileCache;

.field entriesFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/heyzap/common/cache/FileCache;


# direct methods
.method public constructor <init>(Lcom/heyzap/common/cache/FileCache;Lcom/heyzap/common/cache/FileCache;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/common/cache/FileCache;",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->this$0:Lcom/heyzap/common/cache/FileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p2, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/common/cache/FileCache;

    .line 227
    iput-object p3, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->entriesFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 228
    return-void
.end method

.method private clean()V
    .locals 6

    .prologue
    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-virtual {v0}, Lcom/heyzap/common/cache/FileCache;->all()Ljava/util/ArrayList;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/cache/Entry;

    .line 283
    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-static {v0}, Lcom/heyzap/common/cache/FileCache;->access$100(Lcom/heyzap/common/cache/FileCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-virtual {v0}, Lcom/heyzap/common/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 291
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 292
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 294
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 291
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :cond_2
    return-void
.end method

.method private writeEntriesFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    .line 253
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 254
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 256
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->this$0:Lcom/heyzap/common/cache/FileCache;

    invoke-static {v0}, Lcom/heyzap/common/cache/FileCache;->access$000(Lcom/heyzap/common/cache/FileCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/cache/Entry;

    .line 258
    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->isDirty()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 260
    :try_start_0
    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 268
    :cond_1
    sget-object v0, Lcom/heyzap/common/cache/FileCache;->ROOT_ENTRIES_ELEMENT:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    sget-object v0, Lcom/heyzap/common/cache/FileCache;->ROOT_VERSION_ELEMENT:Ljava/lang/String;

    sget-object v2, Lcom/heyzap/common/cache/FileCache;->VERSION_UID:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-static {v2}, Lcom/heyzap/common/cache/FileCache;->access$100(Lcom/heyzap/common/cache/FileCache;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 272
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 274
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 275
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 233
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 234
    invoke-direct {p0}, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->writeEntriesFile()V

    .line 235
    invoke-direct {p0}, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->clean()V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 239
    const-string v1, "(CACHE) Sync took %dms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->entriesFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_1
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 244
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache$SyncRunnable;->entriesFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    throw v0
.end method
