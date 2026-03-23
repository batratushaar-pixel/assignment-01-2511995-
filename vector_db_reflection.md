## Vector DB Use Case

A traditional keyword-based search would not be sufficient for searching large legal contracts. Such systems rely on exact word matching, which fails when users phrase queries differently from how the information is written in the document.

For example, a lawyer searching for "termination clauses" might miss relevant sections if the document uses terms like "contract cancellation" or "agreement ending conditions". Keyword search cannot capture semantic meaning or context.

A vector database solves this problem by converting text into embeddings that represent semantic meaning. When a query is entered, it is also converted into an embedding and compared with stored embeddings using similarity measures such as cosine similarity. This allows the system to retrieve contextually relevant sections even if exact keywords are not present.

Thus, vector databases enable intelligent, semantic search, making them highly suitable for applications involving large, complex legal documents.