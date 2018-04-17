.class public Lcom/heyzap/internal/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field static ENABLED:Z

.field static ONLY_TEMP_LOG:Z

.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/heyzap/internal/Logger;->ONLY_TEMP_LOG:Z

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    .line 12
    const-string v0, "HeyzapSDK"

    sput-object v0, Lcom/heyzap/internal/Logger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "NULL"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    if-eqz p0, :cond_1

    .line 49
    sget-object v0, Lcom/heyzap/internal/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "NULL"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/heyzap/internal/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/heyzap/internal/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/heyzap/internal/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 120
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "NULL"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    if-eqz p0, :cond_1

    .line 68
    sget-object v0, Lcom/heyzap/internal/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "NULL"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/heyzap/internal/Logger$1;

    invoke-direct {v1, p0}, Lcom/heyzap/internal/Logger$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    return-void
.end method

.method public static log(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    invoke-static {p0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    invoke-static {p0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs log([Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ONLY_TEMP_LOG:Z

    if-nez v0, :cond_0

    .line 141
    if-nez p0, :cond_2

    .line 142
    const-string v0, "null arguments"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 147
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 150
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDebugLogging(Z)V
    .locals 0

    .prologue
    .line 163
    sput-boolean p0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    return-void
.end method

.method public static varargs t([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 123
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 126
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 129
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trace()V
    .locals 1

    .prologue
    .line 157
    const-string v0, ""

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Object;)V

    return-void
.end method

.method public static trace(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 84
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string v0, "Stack Trace: %s\n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    move v0, v1

    .line 88
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 89
    aget-object v4, v3, v0

    .line 90
    const-string v5, "\t%s:%d in %s.%s\n"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static trace(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 103
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    if-eqz p0, :cond_0

    .line 105
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 106
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 107
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    sget-object v0, Lcom/heyzap/internal/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lcom/heyzap/internal/Logger;->TAG:Ljava/lang/String;

    const-string v1, "NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/heyzap/internal/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
