select * from clients c, client_has_vehicle s where c.idClient = s.client_idClient;

select * from team t, services s 
			where t.idTeam = s.mechanic_idteam
            group by idTeam;