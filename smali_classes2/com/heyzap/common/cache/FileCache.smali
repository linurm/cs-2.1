.class public Lcom/heyzap/common/cache/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/cache/FileCache$EntriesReader;,
        Lcom/heyzap/common/cache/FileCache$SyncRunnable;
    }
.end annotation


# static fields
.field public static ENTRIES_FILENAME:Ljava/lang/String; = null

.field public static KLASS_ELEMENT:Ljava/lang/String; = null

.field public static ROOT_ENTRIES_ELEMENT:Ljava/lang/String; = null

.field public static ROOT_VERSION_ELEMENT:Ljava/lang/String; = null

.field public static final SUPER_FILE_PREFIX:Ljava/lang/String; = "hz"

.field public static UNLIMITED_SIZE:Ljava/lang/Long;

.field public static VERSION_UID:Ljava/lang/Long;


# instance fields
.field private cacheDir:Ljava/io/File;

.field private entries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/common/cache/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private entriesFile:Ljava/io/File;

.field private executor:Ljava/util/concurrent/Executor;

.field private maxSizeBytes:Ljava/lang/Long;

.field private open:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    const-string v0, "entries.json"

    sput-object v0, Lcom/heyzap/common/cache/FileCache;->ENTRIES_FILENAME:Ljava/lang/String;

    .line 43
    const-string v0, "entries"

    sput-object v0, Lcom/heyzap/common/cache/FileCache;->ROOT_ENTRIES_ELEMENT:Ljava/lang/String;

    .line 44
    const-string v0, "version"

    sput-object v0, Lcom/heyzap/common/cache/FileCache;->ROOT_VERSION_ELEMENT:Ljava/lang/String;

    .line 45
    const-string v0, "klass"

    sput-object v0, Lcom/heyzap/common/cache/FileCache;->KLASS_ELEMENT:Ljava/lang/String;

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/heyzap/common/cache/FileCache;->VERSION_UID:Ljava/lang/Long;

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/heyzap/common/cache/FileCache;->UNLIMITED_SIZE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/heyzap/common/cache/FileCache;->UNLIMITED_SIZE:Ljava/lang/Long;

    iput-object v0, p0, Lcom/heyzap/common/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    .line 58
    iput-object p1, p0, Lcom/heyzap/common/cache/FileCache;->executor:Ljava/util/concurrent/Executor;

    .line 59
    iput-object p2, p0, Lcom/heyzap/common/cache/FileCache;->cacheDir:Ljava/io/File;

    .line 60
    iput-object p3, p0, Lcom/heyzap/common/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/common/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/common/cache/FileCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/common/cache/FileCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/heyzap/common/cache/FileCache;->getEntriesFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/common/cache/FileCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getEntriesFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/heyzap/common/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/heyzap/common/cache/FileCache;->ENTRIES_FILENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public all()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/heyzap/common/cache/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public close()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "(CACHE) Close"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    invoke-virtual {p0}, Lcom/heyzap/common/cache/FileCache;->sync()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/heyzap/common/cache/FileCache;->getEntriesFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 130
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/cache/Entry;

    .line 133
    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->deleteHardReference()Ljava/lang/Boolean;

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public flush()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v5

    .line 145
    invoke-virtual {p0}, Lcom/heyzap/common/cache/FileCache;->size()Ljava/lang/Long;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/cache/Entry;

    .line 147
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->getSize()J

    move-result-wide v0

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    sget-object v2, Lcom/heyzap/common/cache/FileCache;->UNLIMITED_SIZE:Ljava/lang/Long;

    if-ne v0, v2, :cond_1

    .line 151
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 190
    :goto_1
    return-object v5

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    sget-object v2, Lcom/heyzap/common/cache/FileCache;->UNLIMITED_SIZE:Ljava/lang/Long;

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    .line 156
    const-string v0, "(CACHE) Flushing LRU... (%d bytes for a max %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/heyzap/common/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v6, Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 164
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 166
    const/4 v0, 0x0

    .line 167
    const-wide/16 v2, 0x0

    move-object v4, v1

    move v1, v0

    .line 170
    :goto_2
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->maxSizeBytes:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    .line 171
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/cache/Entry;

    .line 172
    if-nez v0, :cond_3

    .line 173
    new-instance v0, Ljava/lang/Exception;

    const-string v4, "Error in popping!"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :try_start_1
    invoke-virtual {v5, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    const-string v0, "(CACHE) Flush removed %d entries and freed %d bytes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v5

    :goto_3
    move-object v5, v0

    .line 190
    goto :goto_1

    .line 158
    :cond_2
    const-string v0, "(CACHE) No need to flush. Unlimited cache size or under max at %d bytes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 176
    :cond_3
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/heyzap/common/cache/FileCache;->remove(Lcom/heyzap/common/cache/Entry;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->getSize()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 179
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->getSize()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-wide v12, v2

    move v2, v1

    move-object v3, v0

    move-wide v0, v12

    :goto_4
    move-object v4, v3

    move v12, v2

    move-wide v2, v0

    move v1, v12

    .line 181
    goto :goto_2

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/heyzap/common/cache/FileCache;->sync()Lcom/heyzap/common/concurrency/SettableFuture;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 187
    const-string v4, "(CACHE) Flush removed %d entries and freed %d bytes"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v4, "(CACHE) Flush removed %d entries and freed %d bytes"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    move-wide v12, v2

    move v2, v1

    move-object v3, v4

    move-wide v0, v12

    goto :goto_4
.end method

.method public get(Ljava/lang/String;)Lcom/heyzap/common/cache/Entry;
    .locals 2

    .prologue
    .line 94
    .line 95
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/cache/Entry;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->fileExists()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0, v0}, Lcom/heyzap/common/cache/FileCache;->remove(Lcom/heyzap/common/cache/Entry;)Ljava/lang/Boolean;

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public isOpen()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public open()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "(CACHE) Open"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/heyzap/common/cache/FileCache$EntriesReader;

    invoke-direct {v2, p0, p0, v0}, Lcom/heyzap/common/cache/FileCache$EntriesReader;-><init>(Lcom/heyzap/common/cache/FileCache;Lcom/heyzap/common/cache/FileCache;Lcom/heyzap/common/concurrency/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public put(Lcom/heyzap/common/cache/Entry;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/heyzap/common/cache/Entry;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/heyzap/common/cache/Entry;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    return-void
.end method

.method public remove(Lcom/heyzap/common/cache/Entry;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p1}, Lcom/heyzap/common/cache/Entry;->deleteHardReference()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const-string v0, "(CACHE) Failed to remove %s. Deletion failed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/heyzap/common/cache/Entry;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/cache/Entry;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/heyzap/common/cache/FileCache;->remove(Lcom/heyzap/common/cache/Entry;)Ljava/lang/Boolean;

    .line 126
    :cond_0
    return-void
.end method

.method public size()Ljava/lang/Long;
    .locals 5

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    .line 214
    iget-object v2, p0, Lcom/heyzap/common/cache/FileCache;->entries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/cache/Entry;

    .line 215
    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->getSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/heyzap/common/cache/FileCache;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/heyzap/common/cache/FileCache$SyncRunnable;

    invoke-direct {v2, p0, p0, v0}, Lcom/heyzap/common/cache/FileCache$SyncRunnable;-><init>(Lcom/heyzap/common/cache/FileCache;Lcom/heyzap/common/cache/FileCache;Lcom/heyzap/common/concurrency/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-object v0
.end method
