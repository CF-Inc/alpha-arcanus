FROM dgraph/dgraph:latest
ADD apps/database/src/schema.graphql schema.grpahql
ADD apps/database/scripts/init.sh /init.sh
RUN chmod +x /init.sh

CMD ["/init.sh"]
