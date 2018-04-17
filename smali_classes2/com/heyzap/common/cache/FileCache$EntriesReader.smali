.class Lcom/heyzap/common/cache/FileCache$EntriesReader;
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
    name = "EntriesReader"
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
    .line 305
    iput-object p1, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->this$0:Lcom/heyzap/common/cache/FileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/common/cache/FileCache;

    .line 307
    iput-object p3, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->entriesFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 308
    return-void
.end method

.method private read()Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 370
    .line 371
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-virtual {v1}, Lcom/heyzap/common/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-virtual {v1}, Lcom/heyzap/common/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-virtual {v1}, Lcom/heyzap/common/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->this$0:Lcom/heyzap/common/cache/FileCache;

    invoke-static {v1}, Lcom/heyzap/common/cache/FileCache;->access$100(Lcom/heyzap/common/cache/FileCache;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 389
    :catch_0
    move-exception v1

    .line 396
    :cond_2
    :goto_1
    return-object v0

    .line 383
    :cond_3
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 385
    sget-object v3, Lcom/heyzap/common/cache/FileCache;->ROOT_ENTRIES_ELEMENT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 387
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 393
    goto :goto_1

    .line 391
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 313
    :try_start_0
    invoke-direct {p0}, Lcom/heyzap/common/cache/FileCache$EntriesReader;->read()Lorg/json/JSONArray;

    move-result-object v4

    .line 314
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v3, v0

    .line 315
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v3, v0, :cond_4

    .line 316
    const/4 v5, 0x0

    .line 319
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 324
    :goto_1
    if-nez v2, :cond_1

    .line 315
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    :try_start_2
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v1

    goto :goto_1

    .line 329
    :cond_1
    :try_start_3
    sget-object v0, Lcom/heyzap/common/cache/FileCache;->KLASS_ELEMENT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v6, "com.heyzap.house.cache.Entry"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 333
    const-string v0, "com.heyzap.common.cache.Entry"

    .line 336
    :cond_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 337
    const-string v6, "fromJSONObject"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lorg/json/JSONObject;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 338
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/cache/Entry;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->fileExists()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->isDirty()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-virtual {v2, v0}, Lcom/heyzap/common/cache/FileCache;->put(Lcom/heyzap/common/cache/Entry;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 363
    :catch_1
    move-exception v0

    .line 364
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 365
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->entriesFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 367
    :goto_3
    return-void

    .line 339
    :catch_2
    move-exception v0

    .line 340
    :try_start_5
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 343
    :try_start_6
    invoke-static {v2}, Lcom/heyzap/common/cache/Entry;->fromJSONObject(Lorg/json/JSONObject;)Lcom/heyzap/common/cache/Entry;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 351
    :goto_4
    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->fileExists()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->isDirty()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-virtual {v2, v0}, Lcom/heyzap/common/cache/FileCache;->put(Lcom/heyzap/common/cache/Entry;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 344
    :catch_3
    move-exception v0

    .line 345
    :try_start_8
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/Object;)V

    move-object v0, v1

    .line 348
    goto :goto_4

    .line 346
    :catch_4
    move-exception v0

    .line 347
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v1

    goto :goto_4

    .line 351
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v5}, Lcom/heyzap/common/cache/Entry;->fileExists()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Lcom/heyzap/common/cache/Entry;->isDirty()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-virtual {v1, v5}, Lcom/heyzap/common/cache/FileCache;->put(Lcom/heyzap/common/cache/Entry;)V

    :cond_3
    throw v0

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-static {v0}, Lcom/heyzap/common/cache/FileCache;->access$200(Lcom/heyzap/common/cache/FileCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 360
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->cache:Lcom/heyzap/common/cache/FileCache;

    invoke-virtual {v0}, Lcom/heyzap/common/cache/FileCache;->sync()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache$EntriesReader;->entriesFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3
.end method
